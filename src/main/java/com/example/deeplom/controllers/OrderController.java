package com.example.deeplom.controllers;

import com.example.deeplom.domain.Order;
import com.example.deeplom.repos.OrderRepo;
import com.example.deeplom.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class OrderController {
    @Autowired
    private OrderRepo orderRepo;
    @Autowired
    private OrderService orderService;

    @GetMapping("/order")
    public String UserOrderList (
            //@PathVariable Order order
    ){

        return "orderUser";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("/admorder")
    public String AdminOrderList (
            //@PathVariable Order order
    ){

        return "orderAdmin";
    }

    @GetMapping("/order/cart")
    public String cart (
            //@PathVariable Order order
    ){

        return "cart";
    }
}
