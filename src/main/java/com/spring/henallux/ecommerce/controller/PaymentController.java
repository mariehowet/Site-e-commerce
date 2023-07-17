package com.spring.henallux.ecommerce.controller;


import com.spring.henallux.ecommerce.Constants;
import com.spring.henallux.ecommerce.dataAccess.dao.CategoryTranslationDAO;
import com.spring.henallux.ecommerce.dataAccess.dao.OrderDataAccess;
import com.spring.henallux.ecommerce.model.Basket;
import com.spring.henallux.ecommerce.model.Customer;
import com.spring.henallux.ecommerce.model.Order;
import com.spring.henallux.ecommerce.model.UrlParam;
import com.spring.henallux.ecommerce.service.BasketService;
import org.springframework.security.core.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import static com.spring.henallux.ecommerce.Constants.*;

@Controller
@RequestMapping(value = "/payment")
@SessionAttributes({Constants.BASKET})
public class PaymentController extends SuperController {
    private BasketService basketService;
    private OrderDataAccess orderDAO;
    private Order saveOrder;

    private double discount;
    @Autowired
    public PaymentController(CategoryTranslationDAO categoryTranslationDAO,BasketService basketService, OrderDataAccess orderDAO) {
        super(categoryTranslationDAO);
        this.basketService = basketService;
        this.orderDAO = orderDAO;
    }
    @RequestMapping(method = RequestMethod.GET)
    public String home(Model model,
                       @ModelAttribute(value = Constants.BASKET) Basket basket,
                       Authentication authentication,
                       @ModelAttribute(value = Constants.CURRENT_URL_PARAM) UrlParam urlParam,
                       final BindingResult errors) {
        model.addAttribute(CATEGORIES_TRANSLATIONS, this.getCategoriesTranslationsByCurrentLocale());
        urlParam.setName(null);
        urlParam.setValue(null);
        model.addAttribute(CURRENT_URL_PARAM, urlParam);
        discount = basketService.loadDiscount(basket.getList());
        model.addAttribute("list",basket.getList());
        model.addAttribute("subtotal", basketService.loadSubtotal(basket.getList()));
        model.addAttribute("discount", discount);
        if(basket.getList().isEmpty() || errors.hasErrors())
            return "redirect:/basket";
        saveOrder = orderDAO.save(
                new Order(
                        new Date(),
                        false,
                        discount,
                        (Customer) authentication.getPrincipal(),
                        new ArrayList<>(basket.getList().values())
                )
        );
        return "integrated:payment";
    } // changer fichier pour test

    @RequestMapping(method = RequestMethod.GET, value = "/success")
    public String success(Model model,@ModelAttribute(value = Constants.BASKET) Basket basket,
                          Authentication authentication,
                          @ModelAttribute(value = Constants.CURRENT_URL_PARAM) UrlParam urlParam) {
        model.addAttribute(CATEGORIES_TRANSLATIONS, this.getCategoriesTranslationsByCurrentLocale());
        urlParam.setName(null);
        urlParam.setValue(null);
        model.addAttribute(CURRENT_URL_PARAM, urlParam);

        saveOrder.setIsPaid(true);
        saveOrder.setCustomer((Customer) authentication.getPrincipal());
        saveOrder.setOrderRows(new ArrayList<>(basket.getList().values()));
        orderDAO.save(saveOrder);

        basket.getList().values().clear();

        return "integrated:success";
    }
}