package com.spring.henallux.ecommerce.controller;

import com.spring.henallux.ecommerce.Constants;
import com.spring.henallux.ecommerce.dataAccess.dao.CategoryTranslationDAO;
import com.spring.henallux.ecommerce.model.Basket;
import com.spring.henallux.ecommerce.model.Customer;
import com.spring.henallux.ecommerce.model.UrlParam;
import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.spring.henallux.ecommerce.model.Order;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;

import java.util.ArrayList;
import java.util.Date;

import static com.spring.henallux.ecommerce.Constants.*;


@Controller
@RequestMapping(value="/orders")
public class ListOrdersController extends SuperController {

    @Autowired
    public ListOrdersController(CategoryTranslationDAO categoryTranslationDAO) {
        super(categoryTranslationDAO);
    }

    @RequestMapping(method = RequestMethod.GET)
    public String home(Model model,
                       @ModelAttribute(value = Constants.CURRENT_URL_PARAM) UrlParam urlParam){
        model.addAttribute(CATEGORIES_TRANSLATIONS, this.getCategoriesTranslationsByCurrentLocale());
        urlParam.setName(null);
        urlParam.setValue(null);
        model.addAttribute(CURRENT_URL_PARAM, urlParam);
        return "integrated:listOrders";
    }
    @RequestMapping(value="/send",method=RequestMethod.POST)
    public String getFormData(@ModelAttribute(value="listOrders") Order order){
        return "redirect:/orders";
    }
}
