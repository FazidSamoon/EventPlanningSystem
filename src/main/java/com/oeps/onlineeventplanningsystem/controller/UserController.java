package com.oeps.onlineeventplanningsystem.controller;
import com.oeps.onlineeventplanningsystem.error.UserNotFoundException;
import com.oeps.onlineeventplanningsystem.error.UsernamePasswordMissmatchException;
import com.oeps.onlineeventplanningsystem.model.Role;
import com.oeps.onlineeventplanningsystem.model.User;
import com.oeps.onlineeventplanningsystem.service.ServicesService;
import org.hibernate.Session;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.oeps.onlineeventplanningsystem.repositories.UserRepo;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.util.HashMap;
import java.util.InputMismatchException;
import java.util.Objects;
import java.util.Optional;

@Controller
public class UserController {

    @Autowired
    UserRepo userRepo;

    Logger logger = org.slf4j.LoggerFactory.getLogger(UserController.class);

    // Session object to manage all session states


    // User Login function
    @PostMapping("/login")
    public String loginUser(String userName, String password , HttpSession session) throws UserNotFoundException {

        // Check if user exists
        Optional<User> user = userRepo.findByUsernameAndPassword(userName, password);

        // If user exists, set session variables

            if (user.isPresent()) {
                session.setAttribute("userSession", user.get());
                session.setAttribute("userRole", user.get().getRole());

                logger.info("User logged in " + user.get().getUsername());
                return "redirect:/";
            } else {
                logger.error("User not found");
                throw new UserNotFoundException("Invalid User Details");
            }

    }

    // User Logout function
    @GetMapping("/logout")
    public String logoutUser(HttpSession session, HttpServletRequest request) {

        try{
            session = request.getSession(false);
            if (session != null) {
                session.invalidate();
                logger.info("User logged out");
            }
            return "redirect:/";
        }catch (Exception e){
            return "redirect:/error505";
        }

    }

    // Signup a user function
    @PostMapping("/signup")
    public String registerUser(String userName, String password, String email, String name, String phoneNumber,
            String address, HttpSession session) throws UserNotFoundException {

        // instantiate a new user
        User user = new User();

        Optional existingUser = userRepo.findByUsername(userName);

        // set values to user

        if (existingUser.isPresent()){
            throw new UserNotFoundException("userName already in use");
        }else{
            try {

                user.setUsername(userName);
                user.setPassword(password);
                user.setEmail(email);
                user.setName(name);

                user.setPhone(phoneNumber);
                user.setAddress(address);
                user.setRole(Role.USER);

                // save user to database

                userRepo.save(user);

                // create a session
                session.setAttribute("userSession", user);
                session.setAttribute("userRole", user.getRole());
            }catch (Exception e) {
                logger.error("cant register user " + e.getMessage());
                throw new UserNotFoundException("Cant register user at this time");
            }
        }

        return "redirect:/";
    }

    @PostMapping("/deleteAccount/{id}")
    public String deleteUser(@PathVariable("id") int id , String userName, String password , HttpSession session ,HttpServletRequest request) throws UsernamePasswordMissmatchException, UserNotFoundException {
        Optional<User> user = userRepo.findById(id);


        try {
            if(password.equals(user.get().getPassword()) && user.isPresent() ) {
                userRepo.delete(user.get());

                session = request.getSession(false);
                if (session != null) {
                    session.invalidate();

                }

            }
            return "redirect:/";
        } catch (Exception e) {
            logger.error("cant delete user " + e.getMessage());
            throw new UsernamePasswordMissmatchException("Username or password is incorrect" );
        }

    }


    @PostMapping("/editUserInfo/{id}")
    public String editUser(@PathVariable("id") int id , String username, String eMail , String phone , String name, String address , String password , Model model , HttpSession session, HttpServletRequest request){

        User user1 = userRepo.findById(id).get();

        try {
            if(Objects.nonNull(username) &&
                    !"".equalsIgnoreCase(username)) {
                user1.setUsername(username);
            }

            if(Objects.nonNull(name) &&
                    !"".equalsIgnoreCase(name)) {
                user1.setName(name);
            }

            if(Objects.nonNull(eMail)) {
                user1.setEmail(eMail);
            }

            if(Objects.nonNull(password)) {
                user1.setPassword(password);
            }

            if(Objects.nonNull(phone)) {
                user1.setPhone(phone);
            }

            if(Objects.nonNull(address) &&
                    !"".equalsIgnoreCase(address)) {
                user1.setAddress(address);
            }

            userRepo.save(user1);

            session = request.getSession(false);
            if (session != null) {
                session.invalidate();

            }

            return "redirect:/login";
        }catch (Exception e) {
            logger.error("cant edit user " + e.getMessage());
            return "redirect:/error505";
        }


    }

    @GetMapping("/users/{id}")
    public ModelAndView renderUserInfo(@PathVariable("id") int id){
        User user = userRepo.findById(id).get();

        try {
            return new ModelAndView("/userProfile",new HashMap<>() {
                {
                    put("userInfo", user);
                }
            }, HttpStatus.OK);
        }catch (Exception e) {
            logger.error("cant render user " + e.getMessage());
            return new ModelAndView("/error505");
        }

    }

}
