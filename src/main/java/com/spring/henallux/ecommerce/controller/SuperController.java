package com.spring.henallux.ecommerce.controller;

import com.spring.henallux.ecommerce.Constants;
import com.spring.henallux.ecommerce.dataAccess.dao.CategoryTranslationDAO;
import com.spring.henallux.ecommerce.dataAccess.dao.CategoryTranslationDataAccess;
import com.spring.henallux.ecommerce.model.Basket;
import com.spring.henallux.ecommerce.model.Translation;
import com.spring.henallux.ecommerce.model.UrlParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.ArrayList;

@Controller
@SessionAttributes({Constants.BASKET,Constants.CURRENT_URL_PARAM})
public class SuperController {
    private CategoryTranslationDataAccess categoryTranslationDataAccess;

    @Autowired
    public SuperController(CategoryTranslationDAO categoryTranslationDAO) {
        this.categoryTranslationDataAccess = categoryTranslationDAO;
    }

    public ArrayList<Translation> getCategoriesTranslationsByCurrentLocale() {
        String language = LocaleContextHolder.getLocale().getLanguage();
        return categoryTranslationDataAccess.getAllCategoriesTranslations(language);
    }

    @ModelAttribute(Constants.BASKET)
    public Basket Basket() {
        return new Basket();
    }

    @ModelAttribute(Constants.CURRENT_URL_PARAM)
    public UrlParam UrlParam() { return new UrlParam();}

}
