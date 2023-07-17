package com.spring.henallux.ecommerce.dataAccess.entity;

import javax.persistence.*;

@Entity
@Table(name="item")
public class ItemEntity {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="id")
    private Integer id;
    @Column(name="label")
    private String label;
    @Column(name="price")
    private double price;
    @Column(name="picture")
    private String picture;
    @Column(name="brand")
    private String brand;
    @Column(name="size")
    private String size;
    @Column(name="target")
    private String target;
    @Column(name="thrift_shop")
    private String thriftShop;
    @Column(name="category_Id")
    private String categoryId; // TODO : @JoinColumn @ManyToOne ???


    public ItemEntity() {
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
