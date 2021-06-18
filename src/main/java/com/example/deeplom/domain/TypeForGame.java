package com.example.deeplom.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TypeForGame {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long idType;
    private String nameType;

    public Long getIdType() {
        return idType;
    }

    public void setIdType(Long idType) {
        this.idType = idType;
    }

    public String getNameType() {
        return nameType;
    }

    public void setNameType(String nameType) {
        this.nameType = nameType;
    }

    public TypeForGame(String nameType) {
        this.nameType = nameType;
    }

    public TypeForGame() {
    }
}
