package com.oeps.onlineeventplanningsystem.repositories;


import com.oeps.onlineeventplanningsystem.model.Event;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface EventRepo extends JpaRepository<Event, Integer> {
    Optional<Event> findbyUsername(String username);
    Optional<Event> findById(int id);
    Optional<Event> findByEventname(String eventName);
    Optional<Event> findByEventnameAndUsername(String eventName, String username);
}

