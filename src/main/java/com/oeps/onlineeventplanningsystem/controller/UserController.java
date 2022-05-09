package com.oeps.onlineeventplanningsystem.controller;
import com.oeps.onlineeventplanningsystem.error.UserNotFoundException;
import com.oeps.onlineeventplanningsystem.error.UsernamePasswordMissmatchException;
import com.oeps.onlineeventplanningsystem.model.Role;
import com.oeps.onlineeventplanningsystem.model.User;
import com.oeps.onlineeventplanningsystem.service.ServicesService;
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
import java.util.HashMap;
import java.util.InputMismatchException;
import java.util.Objects;
import java.util.Optional;

@Controller
public class UserController {

    @Autowired
    UserRepo userRepo;

    // Session object to manage all session states


    // User Login function
    @PostMapping("/login")
    public String loginUser(String userName, String password , HttpSession session) throws UserNotFoundException {



        // Check if user exists
        Optional<User> user = userRepo.findByUsernameAndPassword(userName, password);

        // If user exists, set session variables
        if (user.isPresent()) {
            session.setAttribute("userSession", user.get());


            return "redirect:/";
        } else {
            throw new UserNotFoundException("Invalid User Details");
        }
    }

    // User Logout function
    @GetMapping("/logout")
    public String logoutUser(HttpSession session, HttpServletRequest request) {

        session = request.getSession(false);
        if (session != null) {
            session.invalidate();

        }
        return "redirect:/";
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
            }catch (Exception e) {
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
            throw new UsernamePasswordMissmatchException("Username or password is incorrect" );
        }





    }


    @PostMapping("/editUserInfo/{id}")
    public String editUser(@PathVariable("id") int id , String username, String eMail , String phone ,String name,String address , String password , Model model){

        User user1 = userRepo.findById(id).get();

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

    	return "/index";

    }

    @GetMapping("/users/{id}")
    public ModelAndView renderUserInfo(@PathVariable("id") int id){
        User user = userRepo.findById(id).get();

        return new ModelAndView("/userProfile",new HashMap<>() {
            {
                put("userInfo", user);
            }
        }, HttpStatus.OK);
    }




}
