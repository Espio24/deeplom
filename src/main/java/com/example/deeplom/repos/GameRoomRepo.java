package com.example.deeplom.repos;

import com.example.deeplom.domain.GamesRoom;
import org.springframework.data.repository.CrudRepository;

public interface GameRoomRepo extends CrudRepository<GamesRoom, Long> {
}
