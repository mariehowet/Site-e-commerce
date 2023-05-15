package com.spring.henallux.ecommerce.dataAccess.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name="customer")
public class CustomerEntity {
    public CustomerEntity() {

    }

    @Id
    @Column(name="username")
    private String username;

    @Column(name="email")
    private String email;

    @Column(name="password")
    private String password;

    @Column(name="first_name")
    private String firstName;

    @Column(name="last_name")
    private String lastName;

    @Column(name="delivery_address")
    private String deliveryAddress;

    @Column(name="phone_number")
    private String phoneNumber;

    @Column(name="birthdate")
    private Date birthdate;

    @Column(name="authorities")
    private String authorities;

    @Column(name="account_non_expired")
    private Boolean accountNonExpired;

    @Column(name="account_non_locked")
    private Boolean accountNonLocked;

    @Column(name="credentials_non_expired")
    private Boolean credentialsNonExpired;

    @Column(name="enabled")
    private Boolean enabled;

    public void setUsername(String username) {
        this.username = username;
    }

    public void setEmail(String email){this.email = email;}

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setDeliveryAddress(String deliveryAddress) {
        this.deliveryAddress = deliveryAddress;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public void setBirthdate(Date birthdate) {
        this.birthdate = birthdate;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setAuthorities(String authorities) {
        this.authorities = authorities;
    }

    public void setAccountNonExpired(Boolean accountNonExpired) {
        this.accountNonExpired = accountNonExpired;
    }

    public void setAccountNonLocked(Boolean accountNonLocked) {
        this.accountNonLocked = accountNonLocked;
    }

    public void setCredentialsNonExpired(Boolean credentialsNonExpired) {
        this.credentialsNonExpired = credentialsNonExpired;
    }

    public void setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }

    public String getEmail() {
        return email;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getUsername() {
        return username;
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

    public String getPassword() {
        return password;
    }

    public String getAuthorities() {
        return authorities;
    }

    public Boolean getAccountNonExpired() {
        return accountNonExpired;
    }

    public Boolean getAccountNonLocked() {
        return accountNonLocked;
    }

    public Boolean getCredentialsNonExpired() {
        return credentialsNonExpired;
    }

    public Boolean getEnabled() {
        return enabled;
    }
}
