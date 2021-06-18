package com.example.deeplom.domain;

import javax.persistence.*;

@Entity
public class Component {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long idComponents;
    @ManyToOne
    private TableGames idGame;
    @ManyToOne
    private TypeComponent typeComponent;
    private String name;
    private String feilnameComponents;

    public Component() {
    }

    public Component(TableGames idGame, TypeComponent typeComponent, String name, String feilnameComponents) {
        this.idGame = idGame;
        this.typeComponent = typeComponent;
        this.name = name;
        this.feilnameComponents = feilnameComponents;
    }

    public TableGames getIdGame() {
        return idGame;
    }

    public void setIdGame(TableGames idGame) {
        this.idGame = idGame;
    }

    public TypeComponent getTypeComponent() {
        return typeComponent;
    }

    public void setTypeComponent(TypeComponent typeComponent) {
        this.typeComponent = typeComponent;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFeilnameComponents() {
        return feilnameComponents;
    }

    public void setFeilnameComponents(String feilnameComponents) {
        this.feilnameComponents = feilnameComponents;
    }
}
