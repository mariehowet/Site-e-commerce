package com.spring.henallux.ecommerce.model;

public class Item {
    private Integer id;
    private String label;
    private double price;
    private String picture;
    private String brand;
    private String size;
    private String target;
    private String thriftShop;
    private String categoryId;


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

    public String getSize() {
        return size;
    }

    public String getTarget() {
        return target;
    }

    public String getThriftShop() {
        return thriftShop;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public void setTarget(String target) {
        this.target = target;
    }

    public void setThriftShop(String thriftShop) {
        this.thriftShop = thriftShop;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }
}
