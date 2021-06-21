package com.example.deeplom.domain;

import javax.persistence.*;
import java.util.*;

@Entity
public class TableGames {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long idTableGames;
    private String nameTableGames;
    private String discriptionTableGames;
    private String filenameTableGames;
    private int minCountPlayers;
    private int maxCountPlayers;
    private int minTime;
    private int maxTime;
    private int basecost;
    private int arcost;
    @ManyToOne
    @JoinColumn(name = "id_dynamics")
    private TagsForGame dynamics;
    @ManyToOne
    @JoinColumn(name = "id_type")
    private TypeForGame type;
    @ManyToOne
    @JoinColumn(name = "id_complexity")
    private TagsForGame complexity;
    private int analysis;

    @ManyToMany(fetch = FetchType.LAZY, mappedBy = "tableGames")
    private List<GamesRoom> gamesRooms = new ArrayList<>();

    @ManyToMany(fetch = FetchType.LAZY, mappedBy = "tableGames_or")
    private List<Orders> order = new ArrayList<>();

    @ManyToMany(fetch = FetchType.LAZY, mappedBy = "tableGames_kor")
    private List<Korzina> korzinas = new ArrayList<>();

    public List<GamesRoom> getGamesRooms() {
        return gamesRooms;
    }

    public void setGamesRooms(List<GamesRoom> gamesRooms) {
        this.gamesRooms = gamesRooms;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TableGames that = (TableGames) o;
        return gamesRooms.equals(that.gamesRooms);
    }

    @Override
    public int hashCode() {
        return Objects.hash(gamesRooms);
    }


    public TableGames(String nameTableGames, String discriptionTableGames, int basecost, int arcost, int minCountPlayers, int maxCountPlayers, int minTime, int maxTime, TagsForGame dynamics, TypeForGame type, TagsForGame complexity, int analysis) {
        this.basecost = basecost;
        this.arcost = arcost;
        this.minCountPlayers = minCountPlayers;
        this.maxCountPlayers = maxCountPlayers;
        this.minTime = minTime;
        this.maxTime = maxTime;
        this.dynamics = dynamics;
        this.type = type;
        this.complexity = complexity;
        this.analysis = analysis;
        this.discriptionTableGames = discriptionTableGames;
        this.nameTableGames = nameTableGames;
    }

   public List<Orders> getOrders() {
        return order;
    }

    public void setOrders(List<Orders> order) {
        this.order = order;
    }

    public List<Korzina> getKorzinas() {
        return korzinas;
    }

    public void setKorzinas(List<Korzina> korzinas) {
        this.korzinas = korzinas;
    }

    public int getBasecost() {
        return basecost;
    }

    public void setBasecost(int basecost) {
        this.basecost = basecost;
    }

    public int getArcost() {
        return arcost;
    }

    public void setArcost(int arcost) {
        this.arcost = arcost;
    }

    public int getMinCountPlayers() {
        return minCountPlayers;
    }

    public void setMinCountPlayers(int minCountPlayers) {
        this.minCountPlayers = minCountPlayers;
    }

    public int getMaxCountPlayers() {
        return maxCountPlayers;
    }

    public void setMaxCountPlayers(int maxCountPlayers) {
        this.maxCountPlayers = maxCountPlayers;
    }

    public int getMinTime() {
        return minTime;
    }

    public void setMinTime(int minTime) {
        this.minTime = minTime;
    }

    public int getMaxTime() {
        return maxTime;
    }

    public void setMaxTime(int maxTime) {
        this.maxTime = maxTime;
    }

    public TagsForGame getDynamics() {
        return dynamics;
    }

    public void setDynamics(TagsForGame dynamics) {
        this.dynamics = dynamics;
    }

    public TypeForGame getType() {
        return type;
    }

    public void setType(TypeForGame type) {
        this.type = type;
    }

    public TagsForGame getComplexity() {
        return complexity;
    }

    public void setComplexity(TagsForGame complexity) {
        this.complexity = complexity;
    }

    public int getAnalysis() {
        return analysis;
    }

    public void setAnalysis(int analysis) {
        this.analysis = analysis;
    }

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


    @Override
    public String toString() {
        return "TableGames{" +
                "idTableGames='" + idTableGames + '\'' +
                ", nameTableGames='" + nameTableGames + '\'' +
                ", discriptionTableGames='" + discriptionTableGames + '\'' +
                '}';
    }
}
