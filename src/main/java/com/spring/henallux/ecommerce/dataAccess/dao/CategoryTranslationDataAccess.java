package com.spring.henallux.ecommerce.dataAccess.dao;

import com.spring.henallux.ecommerce.model.Translation;

import java.util.ArrayList;

public interface CategoryTranslationDataAccess {
    public ArrayList<Translation> getAllCategoriesTranslations(String language);
}
