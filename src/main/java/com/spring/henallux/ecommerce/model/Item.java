package com.spring.henallux.ecommerce.model;

public class Item {
    private Integer id;
    private String label;
    private double price;
    private String picture;
    private String brand;
    private String target;
    private String thriftShop;

    public Item() {
    }

    public Integer getId() {
        return id;
    }

    public String getLabel() {
        return label;
    }

    public double getPrice() {
        return price;
    }

    public String getPicture() {
        return picture;
    }

    public String getBrand() {
        return brand;
    }

    public String getTarget() {
        return target;
    }

    public String getThriftShop() {
        return thriftShop;
    }
}
