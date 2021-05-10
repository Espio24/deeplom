package com.example.deeplom.controllers;

import com.example.deeplom.domain.GamesRoom;
import com.example.deeplom.domain.TableGames;
import com.example.deeplom.repos.TableGamesRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;

@Controller
public class GamesContoller {
    @Autowired
    private TableGamesRepo gamesRepo;

    @Value("${upload.path}" + "/" + "gamesimg")
    private String uploadPath;

    @GetMapping("/tablegames")
    public String gamesList (Model model){
        Iterable<TableGames> tableGames = gamesRepo.findAll();

        model.addAttribute("tablegames", tableGames);
        return "gamesList";
    }

    @PostMapping("/tablegames")
    public String addGame (
            @RequestParam String nameTableGames,
            @RequestParam String discriptionTableGames,
            @RequestParam ("filenameTableGame") MultipartFile filenameTableGame,
            Model model
    )throws IOException {
        TableGames tableGame = new TableGames(nameTableGames, discriptionTableGames);
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
        gamesRepo.save(tableGame);
        Iterable<TableGames> tableGames = gamesRepo.findAll();
        model.addAttribute("tablegames", tableGames);
        return "gamesList";
    }

    @GetMapping("/tablegames/{tableGames}")
    public String pageRoom(
            @PathVariable TableGames tableGames,
            Model model

    ){
        model.addAttribute("tableGames", tableGames);
        return "gamesPage";
    }

}
