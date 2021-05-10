package com.example.deeplom.controllers;


import com.example.deeplom.domain.Role;
import com.example.deeplom.domain.TableGames;
import com.example.deeplom.domain.User;
import com.example.deeplom.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Map;

@Controller
@RequestMapping("/user")

public class UserController {

    @Autowired
    private UserService userService;

   @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping
    public String userList(Model model){

        model.addAttribute("users",userService.findAll());
        return "userList";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("{user}")
    public String userEditForm(@PathVariable User user, Model model){
        model.addAttribute("user", user);
        model.addAttribute("roles", Role.values());
        return "userEdit";
    }

   @PreAuthorize("hasAuthority('ADMIN')")
    @PostMapping
    public String userSave(
            @RequestParam String username,
            @RequestParam Map<String, String> form,
            @RequestParam("userId") User user
    ){
        userService.saveUser(user, username, form);

        return "redirect:/user";
    }


    @GetMapping("/profile/{user}")
    public String userProfile(
            @PathVariable User user,
            Model model
    ){
        model.addAttribute("users", user);
        return "profile";
    }

    @PostMapping("/profile/{user}")
    public String editProfile(
            @PathVariable User user,
            @RequestParam String lastName,
            @RequestParam String firstName,
            @RequestParam String secondName,
            @RequestParam String email,
            @RequestParam String password,
            @RequestParam MultipartFile filenameUser,
            Model model
    )throws IOException{

       userService.updateProfile(user, password, email, lastName, firstName, secondName, filenameUser);

        model.addAttribute("User", user);
       return "redirect:/user/profile/{user}";
    }

}
