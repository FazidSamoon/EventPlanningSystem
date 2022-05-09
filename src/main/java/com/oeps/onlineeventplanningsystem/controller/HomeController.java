package com.oeps.onlineeventplanningsystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;


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

    @GetMapping("/events")
    public String getEvents() {
        return "events";
    }

    @GetMapping("/event")
    public String getEvent() {
        return "/Event/EventView";
    }

    @GetMapping("/dashboard")
    public String getDashboard() {
        return "./account/admin";
    }

    @GetMapping("/updateBlog")
    public String getUpdateBlog(){
        return "updateBlog";
    }

    @GetMapping("/addBlog")
    public String getAddBlocks(){
         return "addBlog";
    }

    @GetMapping("/readBlog")
    public String getReadBlog(){
        return "readBlog";
    }

    @GetMapping("/editUserInfo")
    public String getEditUserInfo(){
         return "editUserInfo";
    }

    @GetMapping("/deleteAccount")
    public String getDeleteAccount(){
         return "deleteAccount";
    }

    @GetMapping("/createService")
    public String getCreateService(){
         return "createService";
    }

    @GetMapping("/editService")
    public String getEditService(){
         return "editService";
    }

    @PostMapping("/servicesControlAdmin")
    public String getServiceControlAdmin(){
         return "servicesControlAdmin";
    }

}
