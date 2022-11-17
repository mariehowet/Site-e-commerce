package com.spring.henallux.ecommerce.controller;

import com.spring.henallux.ecommerce.model.Customer;
import org.springframework.stereotype.Controller;
import com.spring.henallux.ecommerce.model.Order;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;


@Controller
@RequestMapping(value="/orders")
public class ListOrdersControler {
    @RequestMapping(method = RequestMethod.GET)
    public String home(Model model){
        model.addAttribute("listOrders", new Order());
        return "listOrders";
    }
    @RequestMapping(value="/send",method=RequestMethod.POST)
    public String getFormData(@ModelAttribute(value="listOrders") Order order){
        return "redirect:/orders";
    }
}
