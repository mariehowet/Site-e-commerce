package com.spring.henallux.ecommerce.model;

public class OrderRow {
    private Integer id;
    private Integer quantity;
    private double realPrice;

    public OrderRow() {
    }

    public Integer getId() {
        return id;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public double getRealPrice() {
        return realPrice;
    }
}
