package com.spring.henallux.ecommerce.dataAccess.repository;

import com.spring.henallux.ecommerce.dataAccess.entity.CustomerEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepository extends JpaRepository<CustomerEntity, String> {
    CustomerEntity findByUsername(String userName);
}
