package com.example.deeplom.domain;

import javax.persistence.*;

@Entity
public class GamesRoom {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long idGameRoom;
    private String nameGameRoom;
    private String dateGameRoom;
    private String cityGameRoom;
    private String adressGameRoom;
    private String discriptionGameRoom;
    private String filenameGameRoom;
    private int countPeople;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User user;

    public GamesRoom() {
    }

    public GamesRoom(String nameGameRoom, String dateGameRoom, String cityGameRoom, String adressGameRoom, String discriptionGameRoom,  User user, int countPeople) {
        this.nameGameRoom = nameGameRoom;
        this.dateGameRoom = dateGameRoom;
        this.cityGameRoom = cityGameRoom;
        this.adressGameRoom = adressGameRoom;
        this.discriptionGameRoom = discriptionGameRoom;
        this.user = user;
        this.countPeople = countPeople;
    }

    public int getCountPeople() {
        return countPeople;
    }

    public void setCountPeople(int countPeople) {
        this.countPeople = countPeople;
    }

    public String getUserName(){ return user != null ? user.getUsername():"<none>";}

    public String getFilenameGameRoom() {
        return filenameGameRoom;
    }

    public void setFilenameGameRoom(String filenameGameRoom) {
        this.filenameGameRoom = filenameGameRoom;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Long getIdGameRoom() {
        return idGameRoom;
    }

    public void setIdGameRoom(Long idGameRoom) {
        this.idGameRoom = idGameRoom;
    }

    public String getNameGameRoom() {
        return nameGameRoom;
    }

    public void setNameGameRoom(String nameGameRoom) {
        this.nameGameRoom = nameGameRoom;
    }

    public String getDateGameRoom() {
        return dateGameRoom;
    }

    public void setDateGameRoom(String dateGameRoom) {
        this.dateGameRoom = dateGameRoom;
    }

    public String getCityGameRoom() {
        return cityGameRoom;
    }

    public void setCityGameRoom(String cityGameRoom) {
        this.cityGameRoom = cityGameRoom;
    }

    public String getAdressGameRoom() {
        return adressGameRoom;
    }

    public void setAdressGameRoom(String adressGameRoom) {
        this.adressGameRoom = adressGameRoom;
    }

    public String getDiscriptionGameRoom() {
        return discriptionGameRoom;
    }

    public void setDiscriptionGameRoom(String discriptionGameRoom) {
        this.discriptionGameRoom = discriptionGameRoom;
    }
}
