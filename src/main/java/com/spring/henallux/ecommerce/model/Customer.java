package com.spring.henallux.ecommerce.model;

import java.util.Date;

public class Customer {
    private String email;
    private String password;
    private String firstName;
    private String lastName;
    private String deliveryAddress;
    private String phoneNumber;
    private Date birthdate;

    public Customer() {
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getDeliveryAddress() {
        return deliveryAddress;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public Date getBirthdate() {
        return birthdate;
    }
}


