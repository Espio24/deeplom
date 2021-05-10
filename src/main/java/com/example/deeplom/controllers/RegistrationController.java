package com.example.deeplom.controllers;

import com.example.deeplom.domain.User;
import com.example.deeplom.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class RegistrationController {
    @Autowired
    private UserService userService;


    @GetMapping("/")
    public String greeting(Model model) {
        return "login";
    }

    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(
            User user,
            @RequestParam String firstName,
            @RequestParam String secondName,
            @RequestParam String lastName,
            Map<String, Object> model) {

        if (!userService.addUser(user, firstName, secondName, lastName)) {
            model.put("message", "User exists!");
            return "registration";
        }
        return "redirect:/login";
    }

}