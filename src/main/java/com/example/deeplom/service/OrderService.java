package com.example.deeplom.service;

import com.example.deeplom.domain.Korzina;
import com.example.deeplom.domain.Orders;
import com.example.deeplom.domain.TableGames;
import com.example.deeplom.domain.User;
import com.example.deeplom.repos.KorzinaRepo;
import com.example.deeplom.repos.OrderRepo;
import javafx.scene.control.Tab;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Iterator;
import java.util.List;

@Service
public class OrderService {
    @Autowired
    private OrderRepo orderRepo;
    @Autowired
    private KorzinaRepo korzinaRepo;

    public Iterable<Orders> findAll() {

        return orderRepo.findAll();
    }

    public boolean AddtoKorzina(User user, TableGames tableGames){

        List<Korzina> korzinas = korzinaRepo.findByUser(user);
        if (korzinas.isEmpty()) {
            Korzina korzina = new Korzina(user);
            korzina.addKorzina(tableGames);
            korzinaRepo.save(korzina);
            return true;
        }
        else {
            Korzina korzina = korzinas.get(0);
            korzina.addKorzina(tableGames);
            korzinaRepo.save(korzina);
            return true;
        }

    }

}
