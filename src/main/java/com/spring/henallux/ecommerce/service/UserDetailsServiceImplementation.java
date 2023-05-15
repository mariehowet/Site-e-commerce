package com.spring.henallux.ecommerce.service;

import com.spring.henallux.ecommerce.dataAccess.dao.CustomerDao;
import com.spring.henallux.ecommerce.dataAccess.dao.CustomerDataAccess;
import com.spring.henallux.ecommerce.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserDetailsServiceImplementation implements UserDetailsService {
    private CustomerDataAccess customerDataAccess;

    @Autowired
    public UserDetailsServiceImplementation(CustomerDao customerDao) {
        this.customerDataAccess = customerDao;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Customer customer = customerDataAccess.findByUsername(username);
        if(customer != null) {
            return customer;
        }
        throw new UsernameNotFoundException("Customer not found");
    }
}
