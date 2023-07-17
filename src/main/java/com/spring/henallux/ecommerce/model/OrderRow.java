package com.spring.henallux.ecommerce.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.PositiveOrZero;

public class OrderRow {
    private int id;
    @NotNull
    @PositiveOrZero
    private int quantity;
    private double realPrice;
    private Item item;

    private Order order;


    public OrderRow() {
    }

    public OrderRow(int quantity, double realPrice, Item item) {
        setQuantity(quantity);
        setRealPrice(realPrice);
        setItem(item);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getRealPrice() {
        return realPrice;
    }

    public void setRealPrice(double realPrice) {
        this.realPrice = realPrice;
    }

    public void addQuantity(int quantity) {
        this.quantity += quantity;
    }

    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }
}
