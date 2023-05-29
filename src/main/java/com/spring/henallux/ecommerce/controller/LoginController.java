package com.spring.henallux.ecommerce.controller;

import com.spring.henallux.ecommerce.dataAccess.dao.CategoryTranslationDAO;
import com.spring.henallux.ecommerce.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

import static com.spring.henallux.ecommerce.Constants.CATEGORIES_TRANSLATIONS;

@Controller
@RequestMapping(value="/login")
public class LoginController extends SuperController {

    @Autowired
    public LoginController(CategoryTranslationDAO categoryTranslationDAO) {
        super(categoryTranslationDAO);
    }

    @RequestMapping(method = RequestMethod.GET)
    public String home (Model model) {
        model.addAttribute(CATEGORIES_TRANSLATIONS, this.getCategoriesTranslationsByCurrentLocale());
        model.addAttribute("customer", new Customer());
        return "integrated:loginForm";
    }

}

