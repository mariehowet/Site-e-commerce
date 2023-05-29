package com.spring.henallux.ecommerce.controller;


import com.spring.henallux.ecommerce.dataAccess.dao.CategoryTranslationDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import static com.spring.henallux.ecommerce.Constants.CATEGORIES_TRANSLATIONS;

@Controller
@RequestMapping(value = "/addresspayment")
public class AddressPaymentController extends SuperController {

    @Autowired
    public AddressPaymentController(CategoryTranslationDAO categoryTranslationDAO) {
        super(categoryTranslationDAO);
    }
    @RequestMapping(method = RequestMethod.GET)
    public String home(Model model) {
        model.addAttribute(CATEGORIES_TRANSLATIONS, this.getCategoriesTranslationsByCurrentLocale());
        return "integrated:addressPayment";
    } // changer fichier pour test
}