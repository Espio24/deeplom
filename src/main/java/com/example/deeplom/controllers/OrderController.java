package com.example.deeplom.controllers;

import com.example.deeplom.domain.Korzina;
import com.example.deeplom.domain.Orders;
import com.example.deeplom.domain.TableGames;
import com.example.deeplom.domain.User;
import com.example.deeplom.repos.KorzinaRepo;
import com.example.deeplom.repos.OrderRepo;
import com.example.deeplom.service.OrderService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.swing.text.html.HTMLDocument;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

@Controller
public class OrderController {
    @Autowired
    private OrderRepo orderRepo;

    @Autowired
    private KorzinaRepo korzinaRepo;

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
    Model model
            ){

        Iterable<Orders> orders = orderRepo.findAll();

        model.addAttribute("orders", orders);
        return "orderAdmin";
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

        Orders order = new Orders(user,"2021-06-18T14:26", dataIssue,dataRefund);
        Iterator<TableGames> tableGamesIterator = tableGames.iterator();
        while (tableGamesIterator.hasNext()){
            order.addOrder(tableGamesIterator.next());
        }

        korzinaRepo.delete(korzina);
        orderRepo.save(order);
        return "redirect:/order";
    }
}
