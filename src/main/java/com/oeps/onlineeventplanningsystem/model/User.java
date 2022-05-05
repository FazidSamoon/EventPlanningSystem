package com.oeps.onlineeventplanningsystem.model;

import lombok.NonNull;

import javax.persistence.*;

@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int userID;

    private String username;
    private String password;
    private String email;
    private String name;

    private String phone;
    private String address;
    @Enumerated(EnumType.STRING)
    @Column(name = "role")
    private Role role;

    public User() {
    }

    public User(int userID, String username, String password, String email, String name, String phone, String address,
            Role role) {
        this.userID = userID;
        this.username = username;
        this.password = password;
        this.email = email;
        this.name = name;

        this.phone = phone;
        this.address = address;
        this.role = role;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public int getUserID() {
        return userID;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getEmail() {
        return email;
    }

    public String getName() {
        return name;
    }

    public String getPhone() {
        return phone;
    }

    public String getAddress() {
        return address;
    }

    public Role getRole() {
        return role;
    }

    public void setId(int id) {
    }
}
