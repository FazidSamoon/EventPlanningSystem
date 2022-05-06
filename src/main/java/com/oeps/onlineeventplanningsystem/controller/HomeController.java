package com.oeps.onlineeventplanningsystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class HomeController {

    @GetMapping("/")
    String getHomepage() {

        return "index";
    }

    @GetMapping("/signup")
    public String getSignup() {
        return "signup";
    }


    @GetMapping("/login")
    public String getLogin() {
        return "login";
    }

    @GetMapping("/users")
    public String getUsers() {
        return "userProfile";
    }

    @GetMapping("/events")
    public String getEvents() {
        return "events";
    }

    @GetMapping("/event")
    public String getEvent() {
        return "event";
    }

    @GetMapping("/dashboard")
    public String getDashboard() {
        return "./account/admin";
    }

    @GetMapping("/services")
    public String getServices(){
         return "services";
    }

    @GetMapping("/blogs")
    public String getBlogs(){
         return "blogs";
    }

    @GetMapping("/editUserInfo")
    public String getEditUserInfo(){
         return "editUserInfo";
    }


}
