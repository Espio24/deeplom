package com.example.deeplom.controllers;

import com.example.deeplom.domain.GamesRoom;
import com.example.deeplom.domain.User;
import com.example.deeplom.repos.GameRoomRepo;
import com.example.deeplom.service.GameRoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Controller
public class GameRoomContoller {

    @Autowired
    private GameRoomRepo gameRoomRepo;

    @Autowired
    private GameRoomService gameRoomService;

    @Value("${upload.path}" + "/" + "roomimg")
    private String uploadPath;

    @GetMapping("/gamerooms")
    public String main (
            Model model
    ){
        model.addAttribute("gamesroom", gameRoomService.findAll());
        return "gameroomsList";
    }

    @PostMapping("/gamerooms")
    public String addRoom(
            @AuthenticationPrincipal User user,
            @RequestParam String nameGameRoom,
            @RequestParam String dateGameRoom,
            @RequestParam String cityGameRoom,
            @RequestParam String adressGameRoom,
            @RequestParam String discriptionGameRoom,
            @RequestParam int countPeople,
            @RequestParam ("filenameGameRoom") MultipartFile filenameGameRoom,
            Model model
    )throws IOException {

        gameRoomService.addGameRoom(user, nameGameRoom, discriptionGameRoom, countPeople, dateGameRoom, cityGameRoom, adressGameRoom, filenameGameRoom);

        model.addAttribute("gamesroom", gameRoomService.findAll());
        return "gameroomsList";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("/gamerooms/delete/{gamesRoom}")
    public String deleteRoom(
            @PathVariable GamesRoom gamesRoom
    ){
        gameRoomService.deleteRoom(gamesRoom);
        return "redirect:/gamerooms";
    }

    @GetMapping("/gamerooms/{gamesRoom}")
    public String pageRoom(
            @PathVariable GamesRoom gamesRoom,
            Model model
    ){
        model.addAttribute("gamesRoom", gamesRoom);
        return "gameRoomPage";
    }

    @GetMapping("/gamerooms/{gamesRoom}/edit")
    public String EditRoom(
            @PathVariable GamesRoom gamesRoom,
            Model model
    ){
        model.addAttribute("gamesRoom", gamesRoom);
        return "parts/gameRoomEdit";
    }

    @PostMapping("/gamerooms/{gamesRoom}/edit")
    public String updateGameRoom(
            @AuthenticationPrincipal User currentUser,
            @PathVariable GamesRoom gamesRoom,
            @RequestParam String nameGameRoom,
            @RequestParam String dateGameRoom,
            @RequestParam String cityGameRoom,
            @RequestParam String adressGameRoom,
            @RequestParam String discriptionGameRoom,
            @RequestParam (required=false, defaultValue="-1") int countPeople,
            @RequestParam ("filenameGameRoom") MultipartFile filenameGameRoom,
            Model model
    )throws IOException{

        gameRoomService.EditGameRoom(currentUser, gamesRoom, nameGameRoom, discriptionGameRoom, countPeople, dateGameRoom,cityGameRoom, adressGameRoom, filenameGameRoom);

        model.addAttribute("gamesRoom", gamesRoom);
        return "redirect:/gamerooms";
    }

}
