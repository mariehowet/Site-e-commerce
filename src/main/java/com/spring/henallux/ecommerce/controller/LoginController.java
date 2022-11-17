package com.spring.henallux.ecommerce.controller;

import com.spring.henallux.ecommerce.model.Customer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
@RequestMapping(value="/login")
public class LoginController {
    @RequestMapping(method = RequestMethod.GET)
    public String home (Model model) {
        model.addAttribute("currentUser", new Customer());
        return "integrated:loginForm";
    }
    @RequestMapping(value="/send",method=RequestMethod.POST)
    public String getFormData(@ModelAttribute(value="currentUser")Customer customer){
        return "redirect:/login";
    }

}

