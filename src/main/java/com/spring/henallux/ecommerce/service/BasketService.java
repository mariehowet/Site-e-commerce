package com.spring.henallux.ecommerce.service;

import com.spring.henallux.ecommerce.model.OrderRow;
import org.springframework.stereotype.Service;

import java.util.HashMap;

@Service
public class BasketService {

    public int loadNbItems(HashMap<Integer, OrderRow> basket) {
        return  basket.values().stream().map(orderRow -> orderRow.getQuantity()).reduce(0, Integer::sum);
    }

    public double loadSubtotal(HashMap<Integer, OrderRow> basket) {
        return basket.values().stream().map(orderRow -> orderRow.getRealPrice()).reduce(0.0,Double::sum);
    }
    public double loadDiscount(HashMap<Integer, OrderRow> basket) {
        // A l'achat de min 3 articles, le moins cher offert
        double discount  = 0;
        int nbItems = loadNbItems(basket);
        if(nbItems > 2) {
            discount = basket.values().stream().mapToDouble(orderRow -> orderRow.getItem().getPrice()).min().getAsDouble();
        }
        return discount;
    }
}
