package com.spring.henallux.ecommerce.model;

import java.util.HashMap;

public class Basket {
    private HashMap<Integer, OrderRow> list;
    public Basket() {
        this.list = new HashMap<>();
    }
    public void addToBasket(OrderRow orderRow) {
        int id = orderRow.getItem().getId();
        if (list.containsKey(id)) {
            list.get(id).addQuantity(orderRow.getQuantity());
        } else {
            list.put(id, orderRow);
        }
    }

    public HashMap<Integer, OrderRow> getList() {
        return list;
    }
}
