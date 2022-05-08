package com.oeps.onlineeventplanningsystem.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import com.oeps.onlineeventplanningsystem.model.Event;
import com.oeps.onlineeventplanningsystem.model.User;
import com.oeps.onlineeventplanningsystem.repositories.EventRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.Optional;

@Controller
public class EventController {
    @Autowired
    EventRepo eventRepo;

    @RequestMapping("/createEvent")
    public String createEvent() {
        return "/Event/createEvent";
    }
    @PostMapping("/saveEvent")
    public String saveEvent(String eventName, String eventDescription, String eventDate, String eventLocation, HttpSession session) {
        Event event = new Event();
        event.setEventName(eventName);
        event.setEventDescription(eventDescription);
        event.setEventDate(eventDate);
        event.setEventLocation(eventLocation);


        String username = ((User) session.getAttribute("userSession")).getName();
        event.setUsername(username);
        eventRepo.save(event);

        return "index";
    }
    @GetMapping ("/viewEvent")
    public ModelAndView viewEvent() {
        List<Event> eventlist = eventRepo.findAll();
        return  new ModelAndView("/Event/EventView", new HashMap() {
            {
                put("eventlist", eventlist);
            }
        },HttpStatus.OK);
    }



}
