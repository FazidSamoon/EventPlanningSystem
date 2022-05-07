package com.oeps.onlineeventplanningsystem.repositories;


import com.oeps.onlineeventplanningsystem.model.Event;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Optional;

@Repository
public interface EventRepo extends JpaRepository<Event, Integer> {
    Optional<Event> findByEventId(Integer eventId);
    ArrayList<Event> findByusername(String username);
    //  Optional<Event> findById(int id);
   // Optional<Event> findByEventName(String eventName);
   // Optional<Event> findByEventNameAndusername(String eventName, String username);
}

