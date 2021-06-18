package com.example.deeplom.repos;


import com.example.deeplom.domain.TypeForGame;
import org.springframework.data.repository.CrudRepository;

public interface TypeRepo extends CrudRepository<TypeForGame, Long> {
}
