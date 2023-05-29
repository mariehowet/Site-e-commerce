package com.spring.henallux.ecommerce.dataAccess.util;


import com.spring.henallux.ecommerce.dataAccess.entity.CustomerEntity;
import com.spring.henallux.ecommerce.dataAccess.entity.ItemEntity;
import com.spring.henallux.ecommerce.dataAccess.entity.TranslationEntity;
import com.spring.henallux.ecommerce.model.Customer;

import com.spring.henallux.ecommerce.model.Item;
import com.spring.henallux.ecommerce.model.Translation;
import org.dozer.DozerBeanMapper;
import org.dozer.Mapper;
import org.springframework.stereotype.Component;

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
}

