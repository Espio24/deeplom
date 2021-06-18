package com.example.deeplom.controllers;

import com.example.deeplom.domain.GamesRoom;
import com.example.deeplom.domain.TableGames;
import com.example.deeplom.domain.TagsForGame;
import com.example.deeplom.domain.TypeForGame;
import com.example.deeplom.repos.TableGamesRepo;
import com.example.deeplom.repos.TagsRepo;
import com.example.deeplom.repos.TypeRepo;
import com.example.deeplom.service.TableGamesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
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
    TableGamesService tableGamesService;

    @Autowired
    private TagsRepo tagsRepo;
    @Autowired
    private TypeRepo typeRepo;

    @Autowired
    private TableGamesRepo gamesRepo;

    @Value("${upload.path}" + "/" + "gamesimg")
    private String uploadPath;

    @GetMapping("/tablegames")
    public String gamesList(Model model) {
        Iterable<TagsForGame> tags = tagsRepo.findAll();
        Iterable<TypeForGame> typeForGames = typeRepo.findAll();
        model.addAttribute("tags", tags);
        model.addAttribute("type",typeForGames);
        model.addAttribute("tablegames", tableGamesService.findAll());
        return "gamesList";
    }

    @PostMapping("/tablegames")
    public String addGame(
            @RequestParam String nameTableGames,
            @RequestParam String discriptionTableGames,
            @RequestParam int basecost,
            @RequestParam int arcost,
            @RequestParam int minCountPlayers,
            @RequestParam int maxCountPlayers,
            @RequestParam int minTime,
            @RequestParam int maxTime,
            @RequestParam TagsForGame dynamics,
            @RequestParam TypeForGame type,
            @RequestParam TagsForGame complexity,
            @RequestParam int analysis,
            @RequestParam("filenameTableGame") MultipartFile filenameTableGame,
            Model model
    ) throws IOException {
        tableGamesService.addGame(
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
                analysis,
                filenameTableGame);
        Iterable<TagsForGame> tags = tagsRepo.findAll();
        Iterable<TypeForGame> typeForGames = typeRepo.findAll();
        model.addAttribute("tags", tags);
        model.addAttribute("type",typeForGames);
        model.addAttribute("tablegames", tableGamesService.findAll());
        return "gamesList";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("/tablegames/delete/{tableGames}")
    public String deleteGame(
            @PathVariable TableGames tableGames
    ){
        tableGamesService.deleteGame(tableGames);
        return "redirect:/tablegames";
    }

    @GetMapping("/tablegames/{tableGames}")
    public String pageRoom(
            @PathVariable TableGames tableGames,
            Model model
    ) {
        Iterable<TagsForGame> tags = tagsRepo.findAll();
        Iterable<TypeForGame> typeForGames = typeRepo.findAll();
        model.addAttribute("tags", tags);
        model.addAttribute("type",typeForGames);
        model.addAttribute("tableGames", tableGames);
        return "gamesPage";
    }

}
