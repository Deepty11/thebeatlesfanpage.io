package com.rehnuma.beatles.model;

import javax.persistence.*;

@Entity
@Table(name = "user")
public class User {
    @Id

    private int id;
    private String name;
    private String email;
    private String password;

    public User() {
    }


    public User(String email,String name, String password) {
        super();
        this.name = name;
        this.email = email;
        this.password = password;
    }


    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
