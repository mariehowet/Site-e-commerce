package com.spring.henallux.ecommerce.model;

import java.util.Date;

public class Order {
    private Integer id;
    private Date date;
    private boolean isPaid;

    public Order() {
    }

    public Integer getId() {
        return id;
    }

    public Date getDate() {
        return date;
    }

    public boolean isPaid() {
        return isPaid;
    }
}
