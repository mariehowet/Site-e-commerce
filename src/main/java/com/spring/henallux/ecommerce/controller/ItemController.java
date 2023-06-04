package com.spring.henallux.ecommerce.controller;

import com.spring.henallux.ecommerce.Constants;
import com.spring.henallux.ecommerce.dataAccess.dao.CategoryTranslationDAO;
import com.spring.henallux.ecommerce.dataAccess.dao.ItemDAO;
import com.spring.henallux.ecommerce.dataAccess.dao.ItemDataAccess;
import com.spring.henallux.ecommerce.model.Customer;
import com.spring.henallux.ecommerce.model.Item;
import com.spring.henallux.ecommerce.model.OrderRow;
import com.spring.henallux.ecommerce.model.UrlParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import static com.spring.henallux.ecommerce.Constants.*;

@Controller
@RequestMapping(value="/item")
public class ItemController extends SuperController {

    private ItemDataAccess itemDataAccess;

    @Autowired
    public ItemController(CategoryTranslationDAO categoryTranslationDAO, ItemDAO itemDAO) {
        super(categoryTranslationDAO);
        this.itemDataAccess = itemDAO;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String home (Model model, @RequestParam("item") String itemParam,
                        @ModelAttribute(value = Constants.CURRENT_URL_PARAM) UrlParam urlParam) {
        model.addAttribute(CATEGORIES_TRANSLATIONS, this.getCategoriesTranslationsByCurrentLocale());
        int itemId = Integer.parseInt(itemParam);
        Item item = itemDataAccess.getItemById(itemId);
        if (item != null) {
            urlParam.setName("item");
            urlParam.setValue(itemParam);
            model.addAttribute(CURRENT_URL_PARAM, urlParam);

            model.addAttribute("item", item);
            model.addAttribute("orderRow", new OrderRow());
            return "integrated:item";
        }
        return "integrated:welcome";
    }
}
