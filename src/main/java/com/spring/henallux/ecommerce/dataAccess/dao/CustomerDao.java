package com.spring.henallux.ecommerce.dataAccess.dao;

import com.spring.henallux.ecommerce.dataAccess.entity.CustomerEntity;
import com.spring.henallux.ecommerce.dataAccess.repository.CustomerRepository;
import com.spring.henallux.ecommerce.dataAccess.util.ProviderConverter;
import com.spring.henallux.ecommerce.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class CustomerDao implements CustomerDataAccess {
    private CustomerRepository customerRepository;
    private ProviderConverter providerConverter;

    @Autowired
    public CustomerDao(CustomerRepository customerRepository, ProviderConverter providerConverter) {
        this.customerRepository = customerRepository;
        this.providerConverter = providerConverter;
    }

    public Customer findByUsername(String userName) {
        CustomerEntity customerEntity = customerRepository.findByUsername(userName);
        return providerConverter.customerEntityToCustomerModel(customerEntity);
    }

    public ArrayList<String> getCustomersUsernames() {
        List<CustomerEntity> customersEntities = customerRepository.findAll();
        ArrayList<String> customersUsernames = new ArrayList<>();
        for(CustomerEntity entity : customersEntities) {
            String customerUsername = entity.getUsername();
            customersUsernames.add(customerUsername);
        }
        return customersUsernames;
    }

    public ArrayList<String> getCustomersEmails() {
        List<CustomerEntity> customersEntities = customerRepository.findAll();
        ArrayList<String> customersEmails = new ArrayList<>();
        for(CustomerEntity entity : customersEntities) {
            String customerEmail = entity.getEmail();
            customersEmails.add(customerEmail);
        }
        return customersEmails;
    }

    public Customer save(Customer customer) {
        CustomerEntity customerEntity = providerConverter.customerModelToCustomerEntity(customer);
        customerEntity = customerRepository.save(customerEntity);
        return providerConverter.customerEntityToCustomerModel(customerEntity);
    }
}
