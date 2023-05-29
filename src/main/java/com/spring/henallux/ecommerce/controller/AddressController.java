package com.spring.henallux.ecommerce.controller;

import com.spring.henallux.ecommerce.dataAccess.dao.CategoryTranslationDAO;
import com.spring.henallux.ecommerce.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ModelAttribute;

import static com.spring.henallux.ecommerce.Constants.CATEGORIES_TRANSLATIONS;

@Controller
@RequestMapping(value="/address")
public class AddressController extends SuperController {

    @Autowired
    public AddressController(CategoryTranslationDAO categoryTranslationDAO) {
        super(categoryTranslationDAO);
    }
    @RequestMapping(method = RequestMethod.GET)
    public String home (Model model) {
        model.addAttribute(CATEGORIES_TRANSLATIONS, this.getCategoriesTranslationsByCurrentLocale());
        model.addAttribute("currentUser", new Customer());
        return "integrated:addressForm";
    }
    @RequestMapping(value="/send",method=RequestMethod.POST)
    public String getFormData(@ModelAttribute(value="currentUser")Customer customer){

        return "redirect:/address";
    }

}
