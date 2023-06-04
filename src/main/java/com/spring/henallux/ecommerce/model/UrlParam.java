package com.spring.henallux.ecommerce.model;

public class UrlParam {
    private String name;
    private String value;

    public UrlParam() {
        this.name = null;
        this.value = null;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}
