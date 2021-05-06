package com.example.deeplom.controllers;

import com.example.deeplom.domain.GamesRoom;
import com.example.deeplom.domain.User;
import com.example.deeplom.repos.GameRoomRepo;
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

import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
public class GameRoomContoller {

    @Autowired
    private GameRoomRepo gameRoomRepo;

    @Value("${upload.path}" + "/" + "roomimg")
    private String uploadPath;

    @GetMapping("/gamerooms")
    public String main (
            Model model
    ){
        Iterable<GamesRoom> gamesRooms = gameRoomRepo.findAll();
        model.addAttribute("gamesroom", gamesRooms);
        return "gamerooms";
    }

    @PostMapping("/gamerooms")
    public String addRoom(
            @AuthenticationPrincipal User user,
            @RequestParam String nameGameRoom,
            @RequestParam String dateGameRoom,
            @RequestParam String cityGameRoom,
            @RequestParam String adressGameRoom,
            @RequestParam String discriptionGameRoom,
            @RequestParam ("filenameGameRoom") MultipartFile filenameGameRoom,
            Model model
    )throws IOException {


      GamesRoom gamesRoom = new GamesRoom(
              nameGameRoom,
              dateGameRoom,
              cityGameRoom,
              adressGameRoom,
              discriptionGameRoom,
              user);

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
        Iterable<GamesRoom> gamesRooms = gameRoomRepo.findAll();
        model.addAttribute("gamesroom", gamesRooms);
        return "gamerooms";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("/gamerooms/delete/{gamesRoom}")
    public String deleteRoom(
            @PathVariable GamesRoom gamesRoom
    ){
        gameRoomRepo.deleteById(gamesRoom.getIdGameRoom());

        return "redirect:/gamerooms";
    }


}
