package com.example.deeplom.service;

import com.example.deeplom.domain.*;
import com.example.deeplom.repos.GameRoomRepo;
import com.example.deeplom.repos.TableGamesRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Service
public class TableGamesService {

    @Autowired
    TableGamesRepo tableGamesRepo;

    @Value("${upload.path}" + "/" + "gamesimg")
    private String uploadPath;

    public Iterable<TableGames> findAll() {

        return tableGamesRepo.findAll();
    }

    public void deleteGame(TableGames tableGames){
        tableGamesRepo.deleteById(tableGames.getIdTableGames());
    }


    public boolean addGame(
            String nameTableGames,
            String discriptionTableGames,
            int basecost,
            int arcost,
            int minCountPlayers,
            int maxCountPlayers,
            int minTime,
            int maxTime,
            TagsForGame dynamics,
            TypeForGame type,
            TagsForGame complexity,
            int analysis,
            MultipartFile filenameTableGame
    )throws IOException {
        TableGames tableGame = new TableGames(
                nameTableGames,
                discriptionTableGames,
                basecost,
                arcost,
                minCountPlayers,
                maxCountPlayers,
                minTime,
                maxTime,
                dynamics,
                type,
                complexity,
                analysis);
        if (filenameTableGame != null && !filenameTableGame.getOriginalFilename().isEmpty()) {
            File uploadDir = new File(uploadPath);

            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }

            String uuidFile = UUID.randomUUID().toString();
            String resultFilename = uuidFile + "." + filenameTableGame.getOriginalFilename();

            filenameTableGame.transferTo(new File(uploadPath + "/" + resultFilename));

            tableGame.setFilenameTableGames(resultFilename);
        }
        tableGamesRepo.save(tableGame);
        return true;

    }

    /*public void EditGame(
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
    }*/
}
