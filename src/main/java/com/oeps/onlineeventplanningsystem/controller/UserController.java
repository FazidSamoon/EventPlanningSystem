package com.oeps.onlineeventplanningsystem.controller;

import com.oeps.onlineeventplanningsystem.model.Role;
import com.oeps.onlineeventplanningsystem.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.oeps.onlineeventplanningsystem.repositories.UserRepo;

import javax.servlet.http.HttpSession;
import java.util.Optional;

@Controller
public class UserController {



    @Autowired
    UserRepo userRepo;

    //Session object to manage all session states
    HttpSession session;





    //User Login function
    @GetMapping("/loginUser")
    public String loginUser(String userName, String password ) {


        //Check if user exists
        Optional<User> user= userRepo.findByUsernameAndPassword(userName , password);

        //If user exists, set session variables
        if(user.isPresent()) {

            session.setAttribute("userSession", user.get());
            return "home";
        }else {
            return "login";
        }
    }


    //User Logout function
    @GetMapping("/logout")
    public String logoutUser() {

        //Remove session variables
        session.invalidate();
        return "index";
    }







    //Signup a user function
    @PostMapping("/signup")
    public String registerUser(String userName, String password, String email, String name, String phoneNumber, String address) {


        //instantiate a new user
        User user = new User();

        //set values to user

        user.setUsername(userName);
        user.setPassword(password);
        user.setEmail(email);
        user.setName(name);

        user.setPhone(phoneNumber);
        user.setAddress(address);
        user.setRole(Role.USER);

        //save user to database
        userRepo.save(user);


        return "index";
    }



//    public void updateUser(String userName, String password, String email, String firstName, String lastName, String phoneNumber, String address, String city, String state, String zipCode) {
//
//
//
//    }
//
//    public String deleteUser(String userName , String password) {
//        Optional<User> user= userRepo.findByUsernameAndPassword(userName , password);
//
//
//        if(user.isPresent()) {
//            userRepo.delete(user.get());
//        }
//
//        return "index";
//    }
//
//    public void getUser(String userName) {
//
//
//
//
//    }




}
