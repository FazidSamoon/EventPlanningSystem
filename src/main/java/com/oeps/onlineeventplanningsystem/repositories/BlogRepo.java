package com.oeps.onlineeventplanningsystem.repositories;

import com.oeps.onlineeventplanningsystem.model.Blog;
import com.oeps.onlineeventplanningsystem.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface BlogRepo extends JpaRepository<Blog, Integer> {

    Optional<Blog> findBlogByBlogTitle(String blogTitle);

}
