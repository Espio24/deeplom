package com.example.deeplom.repos;

import com.example.deeplom.domain.GamesRoom;
import com.example.deeplom.domain.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
public interface GameRoomRepo extends CrudRepository<GamesRoom, Long> {
    List<GamesRoom> findByCityGameRoom(String City);

    Iterable<GamesRoom> findByUser(User user);
}
