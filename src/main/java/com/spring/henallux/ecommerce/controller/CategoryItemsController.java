package com.spring.henallux.ecommerce.controller;


import com.spring.henallux.ecommerce.dataAccess.dao.CategoryTranslationDAO;
import com.spring.henallux.ecommerce.dataAccess.dao.ItemDAO;
import com.spring.henallux.ecommerce.dataAccess.dao.ItemDataAccess;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import static com.spring.henallux.ecommerce.Constants.CATEGORIES_TRANSLATIONS;

@Controller
@RequestMapping(value = "/categoryItems")
public class CategoryItemsController extends SuperController {

    private ItemDataAccess itemDataAccess;

    @Autowired
    public CategoryItemsController(CategoryTranslationDAO categoryTranslationDAO, ItemDAO itemDAO) {
        super(categoryTranslationDAO);
        this.itemDataAccess = itemDAO;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String home(Model model, @RequestParam("category") String categoryParam) {
        model.addAttribute(CATEGORIES_TRANSLATIONS, this.getCategoriesTranslationsByCurrentLocale());
        model.addAttribute("itemsByCategory", itemDataAccess.getItemsByCategory(categoryParam));
        return "integrated:categoryItems";
    }
}
