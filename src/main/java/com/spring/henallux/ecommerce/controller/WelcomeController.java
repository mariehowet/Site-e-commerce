package com.spring.henallux.ecommerce.controller;

import com.spring.henallux.ecommerce.Constants;
import com.spring.henallux.ecommerce.dataAccess.dao.CategoryTranslationDAO;
import com.spring.henallux.ecommerce.dataAccess.dao.CategoryTranslationDataAccess;
import com.spring.henallux.ecommerce.model.UrlParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import static com.spring.henallux.ecommerce.Constants.*;


@Controller
@RequestMapping(value="/welcome")
public class WelcomeController extends SuperController {

    @Autowired
    public WelcomeController(CategoryTranslationDAO categoryTranslationDAO) {
        super(categoryTranslationDAO);
    }

    @RequestMapping(method = RequestMethod.GET)
    public String home (Model model,
                        @ModelAttribute(value = Constants.CURRENT_URL_PARAM) UrlParam urlParam) {
        model.addAttribute(CATEGORIES_TRANSLATIONS, this.getCategoriesTranslationsByCurrentLocale());
        urlParam.setName(null);
        urlParam.setValue(null);
        model.addAttribute(CURRENT_URL_PARAM, urlParam);
        return "integrated:welcome";
    }
}
