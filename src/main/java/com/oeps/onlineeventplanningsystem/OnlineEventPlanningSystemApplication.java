package com.oeps.onlineeventplanningsystem;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;

@SpringBootApplication(exclude = SecurityAutoConfiguration.class)
public class OnlineEventPlanningSystemApplication {

    public static void main(String[] args) {
        SpringApplication.run(OnlineEventPlanningSystemApplication.class, args);
    }

}
