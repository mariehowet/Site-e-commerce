package com.spring.henallux.ecommerce.dataAccess.dao;

import com.spring.henallux.ecommerce.dataAccess.entity.ItemEntity;
import com.spring.henallux.ecommerce.dataAccess.entity.OrderEntity;
import com.spring.henallux.ecommerce.dataAccess.entity.OrderRowEntity;
import com.spring.henallux.ecommerce.dataAccess.repository.OrderRepository;
import com.spring.henallux.ecommerce.dataAccess.repository.OrderRowRepository;
import com.spring.henallux.ecommerce.dataAccess.util.ProviderConverter;
import com.spring.henallux.ecommerce.model.Order;
import com.spring.henallux.ecommerce.model.OrderRow;
import com.sun.xml.bind.v2.runtime.output.SAXOutput;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.stream.Collectors;

@Service
@Transactional
public class OrderDAO implements OrderDataAccess{

    private OrderRepository orderRepository;
    private OrderRowRepository orderRowRepository;
    private ProviderConverter providerConverter;

    @Autowired
    public OrderDAO(OrderRepository orderRepository, OrderRowRepository orderRowRepository, ProviderConverter converter) {
        this.orderRepository = orderRepository;
        this.orderRowRepository = orderRowRepository;
        this.providerConverter = converter;
    }
    @Transactional
    @Override
    public Order save(Order order) {

        OrderEntity orderEntity = providerConverter.orderModelToOrderEntity(order);

        OrderEntity saveOrderEntity = orderRepository.save(orderEntity);

        saveOrderEntity.setOrderRowEntities(orderEntity.getOrderRowEntities());

        for(OrderRowEntity row : saveOrderEntity.getOrderRowEntities())
            row.setOrder(saveOrderEntity);

        if (order.getId() != saveOrderEntity.getId())
            orderRowRepository.saveAll(saveOrderEntity.getOrderRowEntities());
        return providerConverter.orderEntityToOrderModel(saveOrderEntity);
    }
}
