package com.example.deeplom.controllers;

import com.example.deeplom.domain.TableGames;
import com.example.deeplom.repos.TableGamesRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class GamesContoller {
    @Autowired
    private TableGamesRepo gamesRepo;

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
            Model model
    ){
        TableGames tableGame = new TableGames(nameTableGames, discriptionTableGames);
        gamesRepo.save(tableGame);
        Iterable<TableGames> tableGames = gamesRepo.findAll();
        model.addAttribute("tablegames", tableGames);
        return "gamesList";
    }

}
