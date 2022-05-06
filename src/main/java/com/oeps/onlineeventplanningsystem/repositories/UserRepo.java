package com.oeps.onlineeventplanningsystem.repositories;

import com.oeps.onlineeventplanningsystem.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepo extends JpaRepository<User, Integer> {


    Optional<User> findByUsernameAndPassword(String username, String password);


}
