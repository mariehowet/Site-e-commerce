package com.spring.henallux.ecommerce.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/itemInfos")
public class ItemInfosController {
    @RequestMapping(method = RequestMethod.GET)
    public String home(Model model) {
        return "integrated:itemInfos";
    }
}
