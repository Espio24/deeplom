package com.example.deeplom.domain;

import javax.persistence.*;

@Entity
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String idOrder;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User user;
    private String dateOrder;
    private String dateIssue;
    private String dateRefund;

    public Order() {
    }

    public Order(User user, String dateOrder, String dateIssue, String dateRefund) {
        this.user = user;
        this.dateOrder = dateOrder;
        this.dateIssue = dateIssue;
        this.dateRefund = dateRefund;
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
