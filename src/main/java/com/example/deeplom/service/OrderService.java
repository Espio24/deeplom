package com.example.deeplom.service;

import com.example.deeplom.domain.Order;
import com.example.deeplom.repos.OrderRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderService {
    @Autowired
    private OrderRepo orderRepo;

    public Iterable<Order> findAll() {

        return orderRepo.findAll();
    }

}
