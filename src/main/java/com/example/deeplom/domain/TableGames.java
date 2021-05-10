package com.example.deeplom.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TableGames {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long idTableGames;
    private String nameTableGames;
    private String discriptionTableGames;
    private String filenameTableGames;


    public String getFilenameTableGames() {
        return filenameTableGames;
    }

    public void setFilenameTableGames(String filenameTableGames) {
        this.filenameTableGames = filenameTableGames;
    }

    public Long getIdTableGames() {
        return idTableGames;
    }

    public void setIdTableGames(Long idTableGames) {
        this.idTableGames = idTableGames;
    }

    public String getNameTableGames() {
        return nameTableGames;
    }

    public void setNameTableGames(String nameTableGames) {
        this.nameTableGames = nameTableGames;
    }

    public String getDiscriptionTableGames() {
        return discriptionTableGames;
    }

    public void setDiscriptionTableGames(String discriptionTableGames) {
        this.discriptionTableGames = discriptionTableGames;
    }

    public TableGames() {
    }

    public TableGames(String nameTableGames, String discriptionTableGames) {
        this.discriptionTableGames = discriptionTableGames;
        this.nameTableGames = nameTableGames;
    }

    @Override
    public String toString() {
        return "TableGames{" +
                "idTableGames='" + idTableGames + '\'' +
                ", nameTableGames='" + nameTableGames + '\'' +
                ", discriptionTableGames='" + discriptionTableGames + '\'' +
                '}';
    }
}
