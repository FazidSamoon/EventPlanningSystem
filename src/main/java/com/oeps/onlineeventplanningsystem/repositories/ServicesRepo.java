package com.oeps.onlineeventplanningsystem.repositories;

import com.oeps.onlineeventplanningsystem.model.Services;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;


public interface ServicesRepo extends JpaRepository<Services, Long> {

    Optional<Services> findByServiceName(String name);
}
