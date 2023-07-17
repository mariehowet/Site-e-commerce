package com.spring.henallux.ecommerce.dataAccess.entity;

import javax.persistence.*;
import java.util.Date;
import java.util.List;
@Entity
@Table(name="`order`")
public class OrderEntity {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="id")
    private Integer id;

    @Column(name = "`date`")
    private Date date;

    @Column(name = "is_paid")
    private Boolean isPaid;

    @Column(name="discount")
    private Double discount;

    @JoinColumn(name = "customer_id", referencedColumnName = "username")
    @ManyToOne
    private CustomerEntity customer;

    @OneToMany(mappedBy = "order")
    private List<OrderRowEntity> orderRowEntities;

    public OrderEntity() {
    }

    public OrderEntity(Integer id, Date date, Boolean isPaid, Double discount, CustomerEntity customer, List<OrderRowEntity> orderRowEntities) {
        this.id = id;
        this.date = date;
        this.isPaid = isPaid;
        this.discount = discount;
        this.customer = customer;
        this.orderRowEntities = orderRowEntities;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Boolean getIsPaid() {
        return isPaid;
    }

    public void setIsPaid(Boolean paid) {
        isPaid = paid;
    }

    public Double getDiscount() {
        return discount;
    }

    public void setDiscount(Double discount) {
        this.discount = discount;
    }

    public CustomerEntity getCustomer() {
        return customer;
    }

    public void setCustomer(CustomerEntity customer) {
        this.customer = customer;
    }

    public List<OrderRowEntity> getOrderRowEntities() {
        return orderRowEntities;
    }

    public void setOrderRowEntities(List<OrderRowEntity> orderRowEntities) {
        this.orderRowEntities = orderRowEntities;
    }
}
