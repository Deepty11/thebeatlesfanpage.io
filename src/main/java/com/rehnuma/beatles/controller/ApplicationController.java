package com.rehnuma.beatles.controller;

import com.rehnuma.beatles.model.User;
import com.rehnuma.beatles.services.UserServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller

public class ApplicationController {
    @Autowired
    private UserServiceImp userServiceImp;
    @RequestMapping("/welcome")
    public String greet(HttpServletRequest request) {
        request.setAttribute("mode","MODE_HOME");
        //model.addAttribute("success", "Successfully loaded");
        return "index";
    }
    @RequestMapping("/register")
    public String registration(HttpServletRequest request)
    {
        request.setAttribute("mode","MODE_REGISTRATION");
        return "index";
    }
    @PostMapping("/saveUser")
    public String registerUser(@ModelAttribute User user,
                               BindingResult result,
                               HttpServletRequest request){
        userServiceImp.saveUser(user);
        //System.out.println(id);
        System.out.println(user.getId());
        System.out.println(user.getName());
        System.out.println(user.getEmail());
        System.out.println(user.getPassword());
        request.setAttribute("mode","MODE_HOME");
        return "index";
    }
    @GetMapping("/showUsers")
    public String showAllUser(HttpServletRequest request) {

        request.setAttribute("user",userServiceImp.readUser());
        request.setAttribute("mode","ALL_USERS");

        return "index";
    }
    @RequestMapping("/deleteUser")
    public String deleteUser(@RequestParam int id,HttpServletRequest request){
        userServiceImp.deleteUser(id);
        request.setAttribute("user",userServiceImp.readUser());
        request.setAttribute("mode","ALL_USERS");
        return "index";
    }

    @RequestMapping("/update")
    public String update(@RequestParam int id, HttpServletRequest request){
        request.setAttribute("userid",id);
        request.setAttribute("user",userServiceImp.readUserWithId(id));
        User user = userServiceImp.readUserWithId(id);
        System.out.println(user.getId());
        System.out.println(user.getName());
        System.out.println(user.getPassword());
        System.out.println(user.getEmail());
        request.setAttribute("mode","MODE_EDIT");
        return "index";
    }
    @PostMapping ("/updateUser{user.id}")
    public String updateUser(@PathVariable("user.id") int id, @ModelAttribute User user, BindingResult result, HttpServletRequest request){

        userServiceImp.updateUser(id,user);
        request.setAttribute("mode","MODE_HOME");
        return "index";

    }
    @RequestMapping("/login")
    public String login(HttpServletRequest request)
    {
        request.setAttribute("mode","MODE_LOGIN");
        return "index";
    }
    @RequestMapping("/loginUser")
    public String loginUser(@ModelAttribute User user, HttpServletRequest request){
        if(userServiceImp.login(user.getEmail(),user.getPassword())!=null){
            request.setAttribute("mode","MODE_HOME1");
            return "home";
        }
        else{
            request.setAttribute("error","Email or password is not wrong");
            request.setAttribute("mode","MODE_LOGIN");
            return "index";
        }

    }
    @RequestMapping("/slideShow")
    public String slideShow(HttpServletRequest request){
        request.setAttribute("mode","MODE_SLIDESHOW");
        return "home";

    }



}
