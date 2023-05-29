package com.spring.henallux.ecommerce.controller;

import com.spring.henallux.ecommerce.dataAccess.dao.CategoryTranslationDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.spring.henallux.ecommerce.model.Order;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;

import static com.spring.henallux.ecommerce.Constants.CATEGORIES_TRANSLATIONS;


@Controller
@RequestMapping(value="/orders")
public class ListOrdersController extends SuperController {

    @Autowired
    public ListOrdersController(CategoryTranslationDAO categoryTranslationDAO) {
        super(categoryTranslationDAO);
    }

    @RequestMapping(method = RequestMethod.GET)
    public String home(Model model){
        model.addAttribute(CATEGORIES_TRANSLATIONS, this.getCategoriesTranslationsByCurrentLocale());
        model.addAttribute("listOrders", new Order());
        return "integrated:listOrders";
    }
    @RequestMapping(value="/send",method=RequestMethod.POST)
    public String getFormData(@ModelAttribute(value="listOrders") Order order){
        return "redirect:/orders";
    }
}
