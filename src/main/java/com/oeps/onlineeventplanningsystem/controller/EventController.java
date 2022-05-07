package com.oeps.onlineeventplanningsystem.controller;

import com.oeps.onlineeventplanningsystem.model.Event;
import com.oeps.onlineeventplanningsystem.repositories.EventRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EventController {
    @Autowired
    EventRepo eventRepo;

    @RequestMapping("/createEvent")
    public String createEvent() {
        return "/createEvent";
    }
    @PostMapping("/saveEvent")
    public String saveEvent(String eventName, String eventDescription, String eventDate, String eventLocation ) {
        Event event = new Event();
        event.setEventName(eventName);
        event.setEventDescription(eventDescription);
        event.setEventDate(eventDate);
        event.setEventLocation(eventLocation);

        eventRepo.save(event);

        return "index";
    }
    @RequestMapping("/viewEvent")
    public String viewEvent() {
        return "EventView";
    }



}
