package com.example.deeplom.repos;

import com.example.deeplom.domain.Orders;
import com.example.deeplom.domain.User;
import org.springframework.data.repository.CrudRepository;

public interface OrderRepo extends CrudRepository<Orders, Long> {
    Iterable<Orders> findByUser(User user);
}
