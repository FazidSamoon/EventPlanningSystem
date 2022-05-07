package com.oeps.onlineeventplanningsystem.controller;

import java.util.ArrayList;
import java.util.List;
import com.oeps.onlineeventplanningsystem.model.Event;
import com.oeps.onlineeventplanningsystem.model.User;
import com.oeps.onlineeventplanningsystem.repositories.EventRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
    @RequestMapping("/viewEvent/{username}")
    public String viewEvent() {
        ArrayList<Event> eventlist = eventRepo.findByusername("username");
        return "/Event/EventView";
    }




}
