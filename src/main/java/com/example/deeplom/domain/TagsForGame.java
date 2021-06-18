package com.example.deeplom.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TagsForGame {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long idTag;
    private String nameTag;

    public Long getIdTag() {
        return idTag;
    }

    public void setIdTag(Long idTag) {
        this.idTag = idTag;
    }

    public String getNameTag() {
        return nameTag;
    }

    public void setNameTag(String nameTag) {
        this.nameTag = nameTag;
    }

    public TagsForGame(String nameTag) {
        this.nameTag = nameTag;
    }

    public TagsForGame() {
    }
}

