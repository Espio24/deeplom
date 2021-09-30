package com.example.deeplom.domain;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Entity
public class Orders {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long idOrder;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User user;

    private String dateOrder;
    private String dateIssue;
    private String dateRefund;
    @ManyToMany(cascade = {
            CascadeType.PERSIST,
            CascadeType.MERGE
    })
    @JoinTable(
            name = "tablegames_to_order",
            joinColumns = {@JoinColumn(name = "order_id")},
            inverseJoinColumns = {@JoinColumn(name = "tablegame_id")}
    )
    private List<TableGames> tableGames_or = new ArrayList<>();

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "status_id")
    private OrderStatus orderStatuses;

    public OrderStatus getOrderStatuses() {
        return orderStatuses;
    }

    public void setOrderStatuses(OrderStatus orderStatuses) {
        this.orderStatuses = orderStatuses;
    }

    public void addOrder(TableGames tableGame){
        this.tableGames_or.add(tableGame);
        tableGame.getOrders().add(this);
    }

    public Orders() {
    }

    public Orders(User user, String dateOrder, String dateIssue, String dateRefund, OrderStatus orderStatuses) {
        this.user = user;
        this.dateOrder = dateOrder;
        this.dateIssue = dateIssue;
        this.dateRefund = dateRefund;
        this.orderStatuses = orderStatuses;
    }

    public Long getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(Long idOrder) {
        this.idOrder = idOrder;
    }

    public List<TableGames> getTableGames_or() {
        return tableGames_or;
    }

    public void setTableGames_or(List<TableGames> tableGames_or) {
        this.tableGames_or = tableGames_or;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getDateOrder() {
        return dateOrder;
    }

    public void setDateOrder(String dateOrder) {
        this.dateOrder = dateOrder;
    }

    public String getDateIssue() {
        return dateIssue;
    }

    public void setDateIssue(String dateIssue) {
        this.dateIssue = dateIssue;
    }

    public String getDateRefund() {
        return dateRefund;
    }

    public void setDateRefund(String dateRefund) {
        this.dateRefund = dateRefund;
    }
}
