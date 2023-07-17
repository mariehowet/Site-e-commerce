package com.spring.henallux.ecommerce.model;

import com.spring.henallux.ecommerce.dataAccess.entity.OrderRowEntity;

import java.util.Date;
import java.util.List;

public class Order {
    private int id;
    private Date date;
    private boolean isPaid;

    private double discount;
    private Customer customer;

    private List<OrderRow> orderRows;

    public Order() {
    }

    public Order(int id, Date date, boolean isPaid, double discount, Customer customer, List<OrderRow> orderRows) {
        this.id = id;
        this.date = date;
        this.isPaid = isPaid;
        this.discount = discount;
        this.customer = customer;
        this.orderRows = orderRows;
    }

    public Order(Date date, boolean isPaid, double discount, Customer customer, List<OrderRow> orderRows) {
        this.date = date;
        this.isPaid = isPaid;
        this.discount = discount;
        this.customer = customer;
        this.orderRows = orderRows;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public boolean getIsPaid() {
        return isPaid;
    }

    public void setIsPaid(boolean paid) {
        isPaid = paid;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public List<OrderRow> getOrderRows() {
        return orderRows;
    }

    public void setOrderRows(List<OrderRow> orderRows) {
        this.orderRows = orderRows;
    }
}
