package com.oeps.onlineeventplanningsystem.controller;

import java.util.*;

import com.oeps.onlineeventplanningsystem.error.UserNotFoundException;
import com.oeps.onlineeventplanningsystem.model.Event;
import com.oeps.onlineeventplanningsystem.model.User;
import com.oeps.onlineeventplanningsystem.repositories.EventRepo;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
public class EventController {
    @Autowired
    EventRepo eventRepo;

    Logger logger = org.slf4j.LoggerFactory.getLogger(EventController.class);

    @RequestMapping("/createEvent")
    public String createEvent(HttpSession session) {
        if (session.getAttribute("userSession") == null) {
            return "redirect:/login";
        }else {
            return "/Event/createEvent";
        }
    }
    @PostMapping("/saveEvent")
    public String saveEvent(String eventName, String eventDescription, String eventDate, String eventLocation, HttpSession session) {
        Event event = new Event();

        try {
            event.setEventName(eventName);
            event.setEventDescription(eventDescription);
            event.setEventDate(eventDate);
            event.setEventLocation(eventLocation);


            String username = ((User) session.getAttribute("userSession")).getName();
            event.setUsername(username);
            eventRepo.save(event);

            logger.info("Event created successfully");

            return "index";
        }catch (Exception e) {
            return "error505";
        }

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
    public ModelAndView editEventDetails(@PathVariable("id") int id) {
        Event eventEdit = eventRepo.findByEventId(id).get();
        try {
            return  new ModelAndView("/Event/EditEvent", new HashMap() {
                {
                    put("eventE", eventEdit);
                }
            },HttpStatus.OK);
        }catch (Exception e) {
            logger.error("Event not found");
            return new ModelAndView("error505");

        }


    }

    @PostMapping("EditEvent/saveEvent/{id}")
    public String updateEvent(@PathVariable("id") int id, String eventName , String eventDescription, String eventDate, String eventLocation) {

        Event event = eventRepo.findByEventId(id).get();

        try {
            if (Objects.nonNull(eventName)){
                event.setEventName(eventName);
            }

            if (Objects.nonNull(eventDescription)){
                event.setEventDescription(eventDescription);
            }

            if (Objects.nonNull(eventDate)){
                event.setEventDate(eventDate);
            }

            if (Objects.nonNull(eventLocation)){
                event.setEventLocation(eventLocation);
            }
            eventRepo.save(event);
            return "redirect:/viewEvent";
        }catch (Exception e) {
            logger.error("Event not updated");
            return "error505";
        }

    }

    @GetMapping ("/DeleteEvent/{id}")
    public String deleteEvent(@PathVariable("id") int id) {
        Event event = eventRepo.findByEventId(id).get();
        try {
            eventRepo.delete(event);
            return "redirect:/viewEvent";
        }catch (Exception e) {
            logger.error("Event not deleted " + e.getMessage());
            return "error505";
        }

    }



}
