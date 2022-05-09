package com.oeps.onlineeventplanningsystem.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.oeps.onlineeventplanningsystem.error.UserNotFoundException;
import com.oeps.onlineeventplanningsystem.model.Event;
import com.oeps.onlineeventplanningsystem.model.User;
import com.oeps.onlineeventplanningsystem.repositories.EventRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
    public ModelAndView viewEvent(HttpSession session) throws UserNotFoundException {

        if (session.getAttribute("userSession") == null) {
            throw new UserNotFoundException("Please login first");
        }
        String username1 = ((User) session.getAttribute("userSession")).getName();
        List<Event> myEventList = eventRepo.findByusername(username1);

        if (myEventList.isEmpty()) {
            throw new UserNotFoundException("No events found");
        }

            return new ModelAndView("/Event/EventView", new HashMap() {
                {
                    put("eventM", myEventList);
                }
            }, HttpStatus.OK);

    }

    @GetMapping ("/EditEvent/{id}")
    public ModelAndView editEvent(@PathVariable("id") int eventIdpass) {
        Optional<Event> eventEdit = eventRepo.findByEventId(eventIdpass);
        return  new ModelAndView("/Event/EditEvent", new HashMap() {
            {
                put("eventE", eventEdit);
            }
        },HttpStatus.OK);

    }



}
