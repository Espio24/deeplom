package com.example.deeplom.repos;

import com.example.deeplom.domain.Korzina;
import com.example.deeplom.domain.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface KorzinaRepo extends CrudRepository<Korzina, Long> {
    List<Korzina> findByUser(User user);
}
