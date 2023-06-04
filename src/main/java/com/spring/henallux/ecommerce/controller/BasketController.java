package com.spring.henallux.ecommerce.controller;


import com.spring.henallux.ecommerce.Constants;
import com.spring.henallux.ecommerce.dataAccess.dao.CategoryTranslationDAO;
import com.spring.henallux.ecommerce.dataAccess.dao.ItemDAO;
import com.spring.henallux.ecommerce.dataAccess.dao.ItemDataAccess;
import com.spring.henallux.ecommerce.model.Basket;
import com.spring.henallux.ecommerce.model.Item;
import com.spring.henallux.ecommerce.model.OrderRow;
import com.spring.henallux.ecommerce.model.UrlParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;

import static com.spring.henallux.ecommerce.Constants.*;

@Controller
@RequestMapping(value = "/basket")
public class BasketController extends SuperController {

    private ItemDataAccess itemDataAccess;

    @Autowired
    public BasketController(CategoryTranslationDAO categoryTranslationDAO, ItemDAO itemDAO) {
        super(categoryTranslationDAO);
        this.itemDataAccess = itemDAO;
    }


    @RequestMapping(method = RequestMethod.GET)
    public String home(Model model,
                       @ModelAttribute(value = Constants.BASKET) Basket basket,
                       @ModelAttribute(value = Constants.CURRENT_URL_PARAM) UrlParam urlParam) {
        model.addAttribute(CATEGORIES_TRANSLATIONS, this.getCategoriesTranslationsByCurrentLocale());
        urlParam.setName(null);
        urlParam.setValue(null);
        model.addAttribute(CURRENT_URL_PARAM, urlParam);
        model.addAttribute("list",basket.getList());

        return "integrated:basket";
    } // changer fichier pour test

    @RequestMapping(value="/addToBasket", method = RequestMethod.POST)
    public String addToBasket(@RequestParam("itemId") String itemParam,
                              @ModelAttribute(value = Constants.BASKET) Basket basket,
                              @Valid @ModelAttribute(value = "orderRow") OrderRow orderRow,
                              final BindingResult errors) {
        if(!errors.hasErrors()) {
            int itemId = Integer.parseInt(itemParam);
            Item item = itemDataAccess.getItemById(itemId);

            orderRow.setRealPrice(item.getPrice() * orderRow.getQuantity());
            orderRow.setItem(item);

            basket.addToBasket(orderRow);

            System.out.println(basket.toString());
            System.out.println(orderRow.getQuantity());
            System.out.println(itemParam);
            System.out.println("okeeee");
            return "redirect:/basket";
        }
        System.out.println(orderRow.getQuantity());
        System.out.println(errors);
        System.out.println("pas oke");
        return "redirect:/item?item=" + itemParam;
    }

    @RequestMapping(value="/deleteToBasket", method = RequestMethod.GET)
    public String deleteToBasket(@RequestParam("itemId") String itemParam,
                              @ModelAttribute(value = Constants.BASKET) Basket basket) {

        int itemId = Integer.parseInt(itemParam);

        basket.getList().remove(itemId);

        return "redirect:/basket";
    }

}