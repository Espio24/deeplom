package com.example.deeplom.controllers;

import com.example.deeplom.domain.*;
import com.example.deeplom.repos.KorzinaRepo;
import com.example.deeplom.repos.OrderRepo;
import com.example.deeplom.repos.OrderStatusRepo;
import com.example.deeplom.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.*;

@Controller
public class OrderController {
    @Autowired
    private OrderRepo orderRepo;

    @Autowired
    private KorzinaRepo korzinaRepo;

    @Autowired
    private OrderStatusRepo orderStatusRepo;

    @Autowired
    private OrderService orderService;

    @GetMapping("/myorder/{user}")
    public String UserOrderList (
            @PathVariable User user,
            Model model
    ){

        Iterable<Orders> orders = orderRepo.findByUser(user);
        model.addAttribute("orders", orders);
        return "orderUser";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("/admorder")
    public String AdminOrderList (
    Model model
            ){
        Iterable<Orders> orders = orderRepo.findAll();

        model.addAttribute("orders", orders);
        return "orderAdmin";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("/admorder/confirm/{order}")
    public String confirm (
            @PathVariable Orders order,
            Model model
    ){
        OrderStatus orderStatus = orderStatusRepo.findByName("Подтвержден");
        order.setOrderStatuses(orderStatus);

        orderRepo.save(order);
        return "redirect:/admorder";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("/admorder/issue/{order}")
    public String issue (
            @PathVariable Orders order,
            Model model
    ){
        OrderStatus orderStatus = orderStatusRepo.findByName("Выдан");
        order.setOrderStatuses(orderStatus);

        orderRepo.save(order);
        return "redirect:/admorder";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("/admorder/accept/{order}")
    public String accept (
            @PathVariable Orders order,
            Model model
    ){
        OrderStatus orderStatus = orderStatusRepo.findByName("Принят");
        order.setOrderStatuses(orderStatus);

        orderRepo.save(order);
        return "redirect:/admorder";
    }

    @GetMapping("/order/{user}")
    public String cart (
            @PathVariable User user,
            Model model
    ){

        List<Korzina> korzinaList = korzinaRepo.findByUser(user);
        if (!korzinaList.isEmpty()) {
            Korzina korzina = korzinaList.get(0);
            List<TableGames> tableGames = korzina.getTableGames_kor();
            model.addAttribute("tablegames", tableGames);
            model.addAttribute("korzina", korzina);
            return "cart";
        }
        else {return "emptycart";}
    }

    @PostMapping("/order/{user}")
    public String sendcart(
            @PathVariable User user,
            @RequestParam String dataIssue,
            @RequestParam String dataRefund,
            Model model
    ){
        List<Korzina> korzinaList = korzinaRepo.findByUser(user);
        Korzina korzina = korzinaList.get(0);
        List<TableGames> tableGames = korzina.getTableGames_kor();
        OrderStatus orderStatus = orderStatusRepo.findByName("В процессе");

        Orders order = new Orders(user,"2021-06-18T14:26", dataIssue,dataRefund, orderStatus);
        Iterator<TableGames> tableGamesIterator = tableGames.iterator();
        while (tableGamesIterator.hasNext()){
            order.addOrder(tableGamesIterator.next());
        }

        korzinaRepo.delete(korzina);
        orderRepo.save(order);
        return "redirect:/order/{user}";
    }
}
