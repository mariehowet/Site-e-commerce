package com.spring.henallux.ecommerce.dataAccess.entity;

import com.spring.henallux.ecommerce.model.Order;

import javax.persistence.*;

@Entity
@Table(name="order_row")
public class OrderRowEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private Integer id;

    @Column(name="quantity")
    private Integer quantity;

    @Column(name="real_price")
    private Double realPrice;

    @ManyToOne
    @JoinColumn(name = "item_id", referencedColumnName = "id")
    private ItemEntity item;

    @ManyToOne
    @JoinColumn(name = "order_id", referencedColumnName = "id")
    private OrderEntity order;

    public OrderRowEntity() {
    }

    public OrderRowEntity(Integer id, Integer quantity, Double realPrice, ItemEntity item, OrderEntity order) {
        setId(id);
        setQuantity(quantity);
        setRealPrice(realPrice);
        setItem(item);
        setOrder(order);
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Double getRealPrice() {
        return realPrice;
    }

    public void setRealPrice(Double realPrice) {
        this.realPrice = realPrice;
    }

    public ItemEntity getItem() {
        return item;
    }

    public void setItem(ItemEntity item) {
        this.item = item;
    }

    public OrderEntity getOrder() {
        return order;
    }

    public void setOrder(OrderEntity order) {
        this.order = order;
    }
}
