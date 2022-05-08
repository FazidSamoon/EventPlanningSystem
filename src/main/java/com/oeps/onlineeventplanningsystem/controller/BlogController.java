package com.oeps.onlineeventplanningsystem.controller;

import com.oeps.onlineeventplanningsystem.error.BlogsExceptions;
import com.oeps.onlineeventplanningsystem.model.Blog;
import com.oeps.onlineeventplanningsystem.model.User;
import com.oeps.onlineeventplanningsystem.repositories.BlogRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;
import java.util.List;
import java.util.Optional;

import static org.springframework.http.RequestEntity.put;

@Controller
public class BlogController {

    @Autowired
    BlogRepo blogRepo;

    @GetMapping("/addNewBlog")
    public String addBlog(String blogTitle, String author, String blogDescription , String blogImage, String blogContent , HttpSession session) throws BlogsExceptions {
        Blog blog = new Blog();
        String username = ((User) session.getAttribute("userSession")).getUsername();

        if (blogImage.length() > 3500){

            throw new BlogsExceptions("Image size should be less than 3500 bytes");
        }else {
            blog.setBlogTitle(blogTitle);
            blog.setAuthor(author);
            blog.setBlogDescription(blogDescription);
            blog.setBlogImage(blogImage);

            blog.setBlogContent(blogContent);
            blog.setUserName(username);

            blogRepo.save(blog);
        }


        return "redirect:/blogs";
    }



    @GetMapping("/manageBlogs")
    public ModelAndView getAllBlogs(){
        List<Blog> blogList = blogRepo.findAll();
        return new ModelAndView("manageBlogs", new HashMap(){
            {
                put("blogL" , blogList);
            }

        },HttpStatus.OK);
    }

    @GetMapping("/blogs")
    public ModelAndView getBlogs(){
        List<Blog> myBlogList = blogRepo.findAll();
        return new ModelAndView("blogs", new HashMap(){
            {
                put("blogM" , myBlogList);
            }

        },HttpStatus.OK);
    }

    @GetMapping("/readBlog/{blogID}")
    public ModelAndView getReadBlogs(@PathVariable("blogID") int blogID){
        Blog blog = blogRepo.findById(blogID).get();
        return new ModelAndView("/readBlog", new HashMap(){
            {
                put("blogR" , blog);
            }

        },HttpStatus.OK);
    }


    @GetMapping("/updateBlog/{blogID}")
    public ModelAndView getExistingBlogs(@PathVariable("blogID") int blogID){
        Blog blog = blogRepo.findById(blogID).get();
        return new ModelAndView("/updateBlog", new HashMap(){
            {
                put("blogC" , blog);
            }

        },HttpStatus.OK);
    }

    @GetMapping("/deleteBlog/{id}")
    public ModelAndView getBlogId(@PathVariable("id") int blogID){
        Blog blog = blogRepo.findById(blogID).get();
        return new ModelAndView("/deleteBlog", new HashMap(){
            {
                put("blogID" , blog);
            }

        },HttpStatus.OK);
    }


    @PostMapping("/updateBlog/newUpdatedBlog/{blogID}")
    public String getNewUpdatedBlogs(@PathVariable("blogID") int blogID ,String blogTitle, String author, String blogDescription , String blogImage,String blogContent){

        Blog blog2 = blogRepo.findById(blogID).get();

        blog2.setBlogTitle(blogTitle);
        blog2.setAuthor(author);
        blog2.setBlogDescription(blogDescription);
        blog2.setBlogImage(blogImage);
        blog2.setBlogContent(blogContent);

        blogRepo.save(blog2);

        return "redirect:/blogs";

    }



    @PostMapping("/deleteBlog/deleteExistingBlog")
    public String deleteBlog(int blogID) throws BlogsExceptions {

        Optional<Blog> blog= blogRepo.findById(blogID);
        if (blog.isEmpty()){
            throw new BlogsExceptions("Blog not found with id: " + blogID);
        }

        if(blog.isPresent()) {
            blogRepo.delete(blog.get());
        }

        return "redirect:/blogs";

    }


}
