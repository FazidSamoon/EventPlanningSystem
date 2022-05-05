package com.oeps.onlineeventplanningsystem.controller;

import com.oeps.onlineeventplanningsystem.model.Blog;
import com.oeps.onlineeventplanningsystem.model.User;
import com.oeps.onlineeventplanningsystem.repositories.BlogRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.List;
import java.util.Optional;

@Controller
public class BlogController {

    @Autowired
    BlogRepo blogRepo;

    public String addBlog(String blogTitle, String author, String blogDescription){
        Blog blog = new Blog();

        blog.setBlogTitle(blogTitle);
        blog.setAuthor(author);
        blog.setBlogDescription(blogDescription);

        blogRepo.save(blog);

        return "blog";
    }

    public String findBlog(String blogTitle){

        Optional<Blog> blog= blogRepo.findBlogByBlogTitle(blogTitle);

        return "blog";

    }

    public String findAllBlog(){

        List<Blog> blog1 = blogRepo.findAll();

        return "blog";

    }



    public String deleteBlog(long blogID){

        Optional<Blog> blog= blogRepo.findById(blogID);


        if(blog.isPresent()) {
            blogRepo.delete(blog.get());
        }

        return "blog";

    }


}
