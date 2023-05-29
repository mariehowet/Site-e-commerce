package com.spring.henallux.ecommerce.dataAccess.dao;

import com.spring.henallux.ecommerce.model.Item;

import java.util.ArrayList;

public interface ItemDataAccess {
    public ArrayList<Item> getItemsByCategory(String categoryId);
    public Item getItemById(Integer id);
}
