package com.example.deeplom.controllers;

import com.example.deeplom.repos.ComponentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ComponentController {
    @Autowired
    private ComponentRepo componentRepo;


    @GetMapping("/componentcheck")
    public String CheckComponent (
    ){

        return "checkcomponent";
    }


}
