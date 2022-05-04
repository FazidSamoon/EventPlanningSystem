package com.oeps.onlineeventplanningsystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class AdminController {
    HttpSession session;

    @RequestMapping("/admin")
    public String admin(){
        return "admin";
    }
}
