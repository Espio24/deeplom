package com.example.deeplom.controllers;

import com.example.deeplom.domain.User;
import com.example.deeplom.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class RegistrationController {
    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String mainPage(Model model){return "main";}

    @GetMapping("/login")
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

    @GetMapping("/activate/{code}")
    public String activate (Model model, @PathVariable String code){

        boolean isActivated = userService.activateUser(code);

        if (isActivated){
            model.addAttribute("message", "Активация произошла успешна");
        } else {
            model.addAttribute("message", "Код активации не найден");
        }
        return "login";
    }

}