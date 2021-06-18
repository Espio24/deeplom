package com.example.deeplom.repos;

import com.example.deeplom.domain.Order;
import org.springframework.data.repository.CrudRepository;

public interface OrderRepo extends CrudRepository<Order, Long> {
}
