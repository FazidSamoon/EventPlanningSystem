package com.oeps.onlineeventplanningsystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
public class HomeController {

    @GetMapping("/")
    String getHomepage() {

        return "index";
    }

    @GetMapping("/signup")
    public String getSignup(){
        return "signup";
    }



    @GetMapping("/login")
    public String getLogin(){
        return "login";
    }
}
