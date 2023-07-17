package com.spring.henallux.ecommerce.controller;


import com.spring.henallux.ecommerce.Constants;
import com.spring.henallux.ecommerce.dataAccess.dao.CategoryTranslationDAO;
import com.spring.henallux.ecommerce.dataAccess.dao.ItemDAO;
import com.spring.henallux.ecommerce.dataAccess.dao.ItemDataAccess;
import com.spring.henallux.ecommerce.model.Basket;
import com.spring.henallux.ecommerce.model.Item;
import com.spring.henallux.ecommerce.model.OrderRow;
import com.spring.henallux.ecommerce.model.UrlParam;
import com.spring.henallux.ecommerce.service.BasketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

import static com.spring.henallux.ecommerce.Constants.*;

@Controller
@RequestMapping(value = "/basket")
@SessionAttributes({Constants.BASKET})
public class BasketController extends SuperController {

    private ItemDataAccess itemDataAccess;

    private BasketService basketService;

    @Autowired
    public BasketController(CategoryTranslationDAO categoryTranslationDAO, ItemDAO itemDAO, BasketService basketService) {
        super(categoryTranslationDAO);
        this.itemDataAccess = itemDAO;
        this.basketService = basketService;
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
        model.addAttribute("nbItems", basketService.loadNbItems(basket.getList()));
        model.addAttribute("subtotal", basketService.loadSubtotal(basket.getList()));
        model.addAttribute("discount", basketService.loadDiscount(basket.getList()));

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

            // Si article existe deja ds panier, alors mettre à jour realPrice + quantity
            if(basket.getList().containsKey(itemId)) {
                basket.getList().get(itemId).addQuantity(orderRow.getQuantity());
                basket.getList().get(itemId).setRealPrice(item.getPrice() * basket.getList().get(itemId).getQuantity());
            } else {
                orderRow.setRealPrice(item.getPrice() * orderRow.getQuantity());
                orderRow.setItem(item);
                basket.addToBasket(orderRow);
            }
            return "redirect:/basket";
        }
        return "redirect:/item?item=" + itemParam;
    }

    @RequestMapping(value = "/updateToBasket", method = RequestMethod.POST)
    public String updateToBasket(@RequestParam("itemId") String itemParam,
                                 @ModelAttribute(value = Constants.BASKET) Basket basket,
                                 @Valid @ModelAttribute(value = "orderRow") OrderRow orderRow,
                                 final BindingResult errors) {
        if(!errors.hasErrors()){
            if(orderRow.getQuantity() > 0) {
                int itemId = Integer.parseInt(itemParam);
                Item item = itemDataAccess.getItemById(itemId);
                basket.getList().get(itemId).setQuantity(orderRow.getQuantity());
                basket.getList().get(itemId).setRealPrice(item.getPrice() * orderRow.getQuantity());
            }
        }
        return "redirect:/basket";
    }

    @RequestMapping(value="/deleteToBasket", method = RequestMethod.GET)
    public String deleteToBasket(@RequestParam("itemId") String itemParam,
                              @ModelAttribute(value = Constants.BASKET) Basket basket) {

        int itemId = Integer.parseInt(itemParam);

        basket.getList().remove(itemId);

        return "redirect:/basket";
    }

}