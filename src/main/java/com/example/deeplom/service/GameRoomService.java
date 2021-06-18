package com.example.deeplom.service;


import com.example.deeplom.domain.GamesRoom;
import com.example.deeplom.domain.TableGames;
import com.example.deeplom.domain.User;
import com.example.deeplom.repos.GameRoomRepo;
import com.example.deeplom.repos.TableGamesRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.*;

@Service
public class GameRoomService {
    @Autowired
    GameRoomRepo gameRoomRepo;
    @Autowired
    TableGamesRepo tableGamesRepo;
    @Value("${upload.path}" + "/" + "roomimg")
    private String uploadPath;

    public Iterable<GamesRoom> findAll() {

        return gameRoomRepo.findAll();
    }

    public void deleteRoom(GamesRoom gamesRoom){
        gameRoomRepo.deleteById(gamesRoom.getIdGameRoom());
    }


    public boolean addGameRoom(
            User user,
            String nameGameRoom,
            String discriptionGameRoom,
            int countPeople,
            String dateGameRoom,
            String cityGameRoom,
            String adressGameRoom,
            MultipartFile filenameGameRoom,
            List<TableGames> gamesSet
                )throws IOException{
        GamesRoom gamesRoom = new GamesRoom(
                nameGameRoom,
                dateGameRoom,
                cityGameRoom,
                adressGameRoom,
                discriptionGameRoom,
                user,
                countPeople);

       Iterator<TableGames> iterator = gamesSet.iterator();
       while (iterator.hasNext()){
           gamesRoom.addTableGames(iterator.next());
       }

        if (filenameGameRoom != null && !filenameGameRoom.getOriginalFilename().isEmpty()) {
            File uploadDir = new File(uploadPath);

            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }

            String uuidFile = UUID.randomUUID().toString();
            String resultFilename = uuidFile + "." + filenameGameRoom.getOriginalFilename();

            filenameGameRoom.transferTo(new File(uploadPath + "/" + resultFilename));

            gamesRoom.setFilenameGameRoom(resultFilename);
        }

        gameRoomRepo.save(gamesRoom);
        return true;
    }

    public void EditGameRoom(
            User currentUser,
            GamesRoom gamesRoom,
            String nameGameRoom,
            String discriptionGameRoom,
            int countPeople,
            String dateGameRoom,
            String cityGameRoom,
            String adressGameRoom,
            MultipartFile filenameGameRoom
    )throws IOException {

        if (gamesRoom.getUser().equals(currentUser)){

            if (!StringUtils.isEmpty(nameGameRoom)){
                gamesRoom.setNameGameRoom(nameGameRoom);
            }

            if (!StringUtils.isEmpty(discriptionGameRoom)){
                gamesRoom.setDiscriptionGameRoom(discriptionGameRoom);
            }

            if (!(countPeople<0)){
                gamesRoom.setCountPeople(countPeople);
            }

            if (!StringUtils.isEmpty(dateGameRoom)){
                gamesRoom.setDateGameRoom(dateGameRoom);
            }

            if (!StringUtils.isEmpty(cityGameRoom)){
                gamesRoom.setCityGameRoom(cityGameRoom);
            }

            if (!StringUtils.isEmpty(adressGameRoom)){
                gamesRoom.setAdressGameRoom(adressGameRoom);
            }

            if (filenameGameRoom != null && !filenameGameRoom.getOriginalFilename().isEmpty()) {
                File uploadDir = new File(uploadPath);

                if (!uploadDir.exists()) {
                    uploadDir.mkdir();
                }

                String uuidFile = UUID.randomUUID().toString();
                String resultFilename = uuidFile + "." + filenameGameRoom.getOriginalFilename();

                filenameGameRoom.transferTo(new File(uploadPath + "/" + resultFilename));

                gamesRoom.setFilenameGameRoom(resultFilename);
            }

            gameRoomRepo.save(gamesRoom);
        }
    }
}
