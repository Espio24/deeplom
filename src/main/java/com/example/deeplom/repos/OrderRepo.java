package com.example.deeplom.repos;

import com.example.deeplom.domain.Orders;
import org.springframework.data.repository.CrudRepository;

public interface OrderRepo extends CrudRepository<Orders, Long> {
}
