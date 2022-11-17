package com.spring.henallux.ecommerce.controller;

import com.spring.henallux.ecommerce.model.Customer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;


@Controller
@RequestMapping(value="/profile")
//@SessionAttributes({Constants.CURRENT_USER})

public class ProfileController {
    //@ModelAttribute(Constants.CURRENT_USER)
    //public Customer customer(){
    //    return new Customer();
    //}

    @RequestMapping(method = RequestMethod.GET)
    public String home (Model model) {
        model.addAttribute("currentUser", new Customer());
        //model.addAttribute("firstName", customer.getFirstName());
        //model.addAttribute("lastName", customer.getLastName());
        //model.addAttribute("email", customer.getEmail());
        return "profile";
    }
    @RequestMapping(value="/send",method=RequestMethod.POST)
    public String getFormData(Model model, Customer customer){
        return "redirect:/profile";
    }

}

