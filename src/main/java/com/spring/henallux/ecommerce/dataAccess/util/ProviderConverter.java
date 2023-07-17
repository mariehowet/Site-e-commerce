package com.spring.henallux.ecommerce.dataAccess.util;


import com.spring.henallux.ecommerce.dataAccess.entity.*;
import com.spring.henallux.ecommerce.model.*;

import org.dozer.DozerBeanMapper;
import org.dozer.Mapper;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.stream.Collectors;

@Component
public class ProviderConverter {

    private Mapper mapper = new DozerBeanMapper();

    public CustomerEntity customerModelToCustomerEntity(Customer customer) {
        return mapper.map(customer,CustomerEntity.class);
    }
    public Customer customerEntityToCustomerModel(CustomerEntity customerEntity) {
        Customer customer = mapper.map(customerEntity,Customer.class);
        customer.setAccountNonExpired(customerEntity.getAccountNonExpired());
        customer.setAccountNonLocked(customerEntity.getAccountNonLocked());
        customer.setCredentialsNonExpired(customerEntity.getCredentialsNonExpired());
        customer.setEnabled(customerEntity.getEnabled());
        customer.setAuthorities(customerEntity.getAuthorities());
        return customer;
    }

    public Translation translationEntityToTranslationModel(TranslationEntity translationEntity) {
        return mapper.map(translationEntity, Translation.class);
    }

    public Item itemEntityToItemModel(ItemEntity itemEntity) {
        return mapper.map(itemEntity, Item.class);
    }

    public OrderEntity orderModelToOrderEntity(Order order) {
        OrderEntity orderEntity = mapper.map(order, OrderEntity.class);
        if (order.getId() != 0)
            orderEntity.setId(order.getId());
        orderEntity.setIsPaid(order.getIsPaid());
        orderEntity.setOrderRowEntities(
                order.getOrderRows()
                        .stream()
                        .map(orderRow -> {
                            OrderRowEntity orderRowEntity = new OrderRowEntity();
                            ItemEntity itemEntity = mapper.map(orderRow.getItem(), ItemEntity.class);
                            orderRowEntity.setQuantity(orderRow.getQuantity());
                            orderRowEntity.setRealPrice(orderRow.getRealPrice());
                            orderRowEntity.setItem(itemEntity);
                            orderRowEntity.setOrder(orderEntity);
                           return orderRowEntity;
                        })
                        .collect(Collectors.toCollection(ArrayList::new)));
        return orderEntity;
    }

    public Order orderEntityToOrderModel(OrderEntity orderEntity) {
        Order order = mapper.map(orderEntity, Order.class);
        order.setId(orderEntity.getId());
        order.setIsPaid(orderEntity.getIsPaid());
        return order;
    }
}

