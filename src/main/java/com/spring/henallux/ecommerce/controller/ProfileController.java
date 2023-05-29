package com.spring.henallux.ecommerce.controller;

import com.spring.henallux.ecommerce.dataAccess.dao.CategoryTranslationDAO;
import com.spring.henallux.ecommerce.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import static com.spring.henallux.ecommerce.Constants.CATEGORIES_TRANSLATIONS;


@Controller
@RequestMapping(value="/profile")
//@SessionAttributes({Constants.CURRENT_USER})

public class ProfileController extends SuperController {

    @Autowired
    public ProfileController(CategoryTranslationDAO categoryTranslationDAO) {
        super(categoryTranslationDAO);
    }
    //@ModelAttribute(Constants.CURRENT_USER)
    //public Customer customer(){
    //    return new Customer();
    //}

    @RequestMapping(method = RequestMethod.GET)
    public String home (Model model) {
        model.addAttribute(CATEGORIES_TRANSLATIONS, this.getCategoriesTranslationsByCurrentLocale());
        //model.addAttribute("firstName", customer.getFirstName());
        //model.addAttribute("lastName", customer.getLastName());
        //model.addAttribute("email", customer.getEmail());
        return "integrated:profile";
    }

}

