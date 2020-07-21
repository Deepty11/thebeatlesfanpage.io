package com.rehnuma.beatles.controller;

import com.rehnuma.beatles.model.User;
import com.rehnuma.beatles.services.UserServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class UserController {

    @Autowired
    private UserServiceImp userServiceImp;
    @GetMapping("/save-User")
    public String save(@RequestParam String name, @RequestParam String email,@RequestParam String password){
        User user = new User(name,email,password);

        userServiceImp.saveUser(user);

        return "userSaved";
    }
    @GetMapping("/findUsers")
    public List<User> readUser(){
        List<User> userList=userServiceImp.readUser();
        return userList;

    }
    @GetMapping("/findUsers/{id}")
    public User readByUserId(@PathVariable int id){
        User user= userServiceImp.readUserWithId(id);
        return user;
    }
    @GetMapping("/updateUser/{UserId}")
    public String update(@PathVariable("UserId") int id,@RequestParam User user){
        userServiceImp.updateUser(id,user);
        return "Updated!";

    }
    @GetMapping("/deleteUser/{UserId}")
    public String delete(@PathVariable("UserId") int id){
        userServiceImp.deleteUser(id);
        return "Deleted!";

    }
}
