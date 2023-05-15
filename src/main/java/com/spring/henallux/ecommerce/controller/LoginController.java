package com.spring.henallux.ecommerce.controller;

import com.spring.henallux.ecommerce.model.Customer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping(value="/login")
public class LoginController {
    @RequestMapping(method = RequestMethod.GET)
    public String home (Model model) {
        model.addAttribute("customer", new Customer());
        return "integrated:loginForm";
    }

}

