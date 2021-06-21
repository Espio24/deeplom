package com.example.deeplom.domain;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Korzina {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToMany(cascade = {
            CascadeType.PERSIST,
            CascadeType.MERGE
    })
    @JoinTable(
            name = "tablegames_to_korzina",
            joinColumns = {@JoinColumn(name = "korzina_id")},
            inverseJoinColumns = {@JoinColumn(name = "tablegame_id")}
    )
    private List<TableGames> tableGames_kor = new ArrayList<>();


    public void addKorzina(TableGames tableGame){
        this.tableGames_kor.add(tableGame);
        tableGame.getKorzinas().add(this);
    }

    public Korzina() {
    }

    public Korzina(User user) {
        this.user = user;
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<TableGames> getTableGames_kor() {
        return tableGames_kor;
    }

    public void setTableGames_kor(List<TableGames> tableGames_kor) {
        this.tableGames_kor = tableGames_kor;
    }

}
