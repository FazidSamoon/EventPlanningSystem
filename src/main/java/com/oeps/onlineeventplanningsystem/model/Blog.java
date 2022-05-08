package com.oeps.onlineeventplanningsystem.model;

import javax.persistence.*;

@Entity
@Table(name = "blog")
public class Blog {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int blogID;
    private String blogTitle;
    private String author;
    @Column(length = 1000)
    private String blogDescription;
    @Column(length = 3500)
    private String blogImage;

    @Column(length = 4000)
    private String blogContent;


    public Blog() {

    }

    public Blog(int blogID, String blogTitle, String author, String blogDescription, String blogImage) {
        this.blogID = blogID;
        this.blogTitle = blogTitle;
        this.author = author;
        this.blogDescription = blogDescription;
        this.blogImage = blogImage;
    }

    public int getBlogID() {
        return blogID;
    }

    public void setBlogID(int blogID) {
        this.blogID = blogID;
    }

    public String getBlogTitle() {
        return blogTitle;
    }

    public void setBlogTitle(String blogTitle) {
        this.blogTitle = blogTitle;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getBlogDescription() {
        return blogDescription;
    }

    public void setBlogDescription(String blogDescription) {
        this.blogDescription = blogDescription;
    }

    public String getBlogImage() {
        return blogImage;
    }

    public void setBlogImage(String blogImage) {
        this.blogImage = blogImage;
    }

    public String getBlogContent() {
        return blogContent;
    }

    public void setBlogContent(String blogContent) {
        this.blogContent = blogContent;
    }
}
