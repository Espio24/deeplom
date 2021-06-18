package com.example.deeplom.controllers;

import com.example.deeplom.domain.TagsForGame;
import com.example.deeplom.domain.TypeForGame;
import com.example.deeplom.repos.TagsRepo;
import com.example.deeplom.repos.TypeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TagsController {

    @Autowired
    private TagsRepo tagsRepo;
    @Autowired
    private TypeRepo typeRepo ;

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("/tags")
    public String listTag(
        Model model
    ){
        Iterable<TypeForGame> typeForGames = typeRepo.findAll();
        Iterable<TagsForGame> tags = tagsRepo.findAll();
        model.addAttribute("tags", tags);
        model.addAttribute("type", typeForGames);

        return "tags";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @PostMapping("/tags")
    public String addTag(
            @RequestParam(required = false) String tag,
            @RequestParam(required = false) String type,
            Model model
    ){

        if (tag!=null){
            TagsForGame tagsForGame = new TagsForGame(tag);
            tagsRepo.save(tagsForGame);
        }

        if (type != null) {
            TypeForGame typeForGame = new TypeForGame(type);
            typeRepo.save(typeForGame);
        }

        Iterable<TypeForGame> typeForGames = typeRepo.findAll();
        Iterable<TagsForGame> tags = tagsRepo.findAll();
        model.addAttribute("tags", tags);
        model.addAttribute("type", typeForGames);

        return "tags";
    }



    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("/tags/delete/{tag}")
    public String deleteTag(
            @PathVariable TagsForGame tag

             ){

        tagsRepo.deleteById(tag.getIdTag());

        return "redirect:/tags";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("/tags/{tag}")
    public String ListTag(
            @PathVariable TagsForGame tag,
            Model model

    ){


        model.addAttribute("tag", tag);


        return "tagsEdit";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @PostMapping("/tags/{tag}")
    public String updateTag(
            @PathVariable Long tag,
            @RequestParam("idTag") TagsForGame tags,
            @RequestParam String nameTag
    ){

        tags.setNameTag(nameTag);
        tagsRepo.save(tags);

        return "redirect:/tags";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("/type/delete/{type}")
    public String deleteType(
            @PathVariable TypeForGame type
    ){

        typeRepo.deleteById(type.getIdType());

        return "redirect:/tags";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("/type/{type}")
    public String ListType(
            @PathVariable TypeForGame type,
            Model model

    ){
        model.addAttribute("type", type);
        return "typeEdit";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @PostMapping("/type/{type}")
    public String updateType(
            @PathVariable Long type,
            @RequestParam("idType") TypeForGame types,
            @RequestParam String nameType
    ){

        types.setNameType(nameType);
        typeRepo.save(types);

        return "redirect:/tags";
    }


}
