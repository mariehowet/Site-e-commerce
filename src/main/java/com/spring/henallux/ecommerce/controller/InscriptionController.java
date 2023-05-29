package com.spring.henallux.ecommerce.controller;

import com.spring.henallux.ecommerce.dataAccess.dao.CategoryTranslationDAO;
import com.spring.henallux.ecommerce.dataAccess.dao.CustomerDAO;
import com.spring.henallux.ecommerce.dataAccess.dao.CustomerDataAccess;
import com.spring.henallux.ecommerce.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.validation.Valid;

import static com.spring.henallux.ecommerce.Constants.CATEGORIES_TRANSLATIONS;

@Controller
@RequestMapping(value="/inscription")
public class InscriptionController extends SuperController {

    private CustomerDataAccess customerDataAccess;

    @Autowired
    public InscriptionController(CategoryTranslationDAO categoryTranslationDAO, CustomerDAO customerDao) {
        super(categoryTranslationDAO);
        this.customerDataAccess = customerDao;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String home (Model model) {
        model.addAttribute(CATEGORIES_TRANSLATIONS, this.getCategoriesTranslationsByCurrentLocale());
        model.addAttribute("customer", new Customer());
        return "integrated:signForm";
    }
    @RequestMapping(value="/send",method=RequestMethod.POST)
    public String getFormData(@Valid @ModelAttribute(value="customer") Customer customer, final BindingResult errors){

        if (!errors.hasErrors()) {
            if(!customer.getUsername().trim().equals("") && !customerDataAccess.getCustomersUsernames().contains(customer.getUsername())) {
                if(!customer.getEmail().trim().equals("") && !customerDataAccess.getCustomersEmails().contains(customer.getEmail())) {
                    if (!customer.getPassword().trim().equals("")) {
                        if (customer.getPassword().equals(customer.getConfirmPassword())) {
                            customer.setPassword(new BCryptPasswordEncoder().encode(customer.getPassword()));
                            customer.setAuthorities("ROLE_USER");
                            customer.setAccountNonExpired(true);
                            customer.setAccountNonLocked(true);
                            customer.setCredentialsNonExpired(true);
                            customer.setEnabled(true);

                            try {
                                System.out.println("je passe");
                                customerDataAccess.save(customer);
                            } catch (Exception e) {
                                System.out.println("je suis catch");
                                System.out.println(e.getMessage());
                                return "integrated:signForm";
                            }

                            customer.setFirstName("");
                            customer.setLastName("");
                            customer.setUsername("");
                            customer.setPassword("");
                            customer.setConfirmPassword("");
                            customer.setEmail("");
                            customer.setDeliveryAddress("");
                            customer.setPhoneNumber("");
                            customer.setBirthdate(null);

                            return "integrated:signForm";

                        } else {
                            errors.rejectValue("confirmPassword", "error.confirmPassword", "Les mots de passe ne sont pas identiques");
                            customer.setConfirmPassword("");
                            return "integrated:signForm";
                        }
                    } else {
                        System.out.println(customer.getPassword().trim());
                        errors.rejectValue("password", "error.emptyPassword", "Mot de passe vide");
                        customer.setConfirmPassword("");
                        return "integrated:signForm";
                    }
                }else {
                    errors.rejectValue("email", "error.mailAddress", "Vous ne pouvez pas utiliser cet email");
                    customer.setEmail("");
                    return "integrated:signForm";
                }

            } else {
                errors.rejectValue("username", "error.username", "Vous ne pouvez pas utiliser ce nom d'utilisateur");
                customer.setUsername("");
                return "integrated:signForm";
            }

        } else {
            System.out.println(errors);
            return "integrated:signForm";
        }
    }

}

