package com.spring.henallux.ecommerce.dataAccess.dao;

import com.spring.henallux.ecommerce.model.Customer;

import java.util.ArrayList;

public interface CustomerDataAccess {
    public Customer findByUsername(String userName);
    public Customer save(Customer customer);

    public ArrayList<String> getCustomersUsernames();
    public ArrayList<String> getCustomersEmails();
}
