package com.example.deeplom.repos;

import com.example.deeplom.domain.OrderStatus;
import org.springframework.data.repository.CrudRepository;

public interface OrderStatusRepo extends CrudRepository<OrderStatus, Long> {
    OrderStatus findByName(String name);
}
