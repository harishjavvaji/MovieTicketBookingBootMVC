package com.movieticket.booking.controllers;

import com.movieticket.booking.models.Customer;
import com.movieticket.booking.services.LoginService;
import com.movieticket.booking.validators.LoginValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Controller
@SessionAttributes("customer")
public class LoginController {
    @Autowired
    LoginService loginService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView viewLogin(Model model) {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login");
        model.addAttribute(new Customer());
        modelAndView.addObject(new Customer());
        return modelAndView;

    }

    @RequestMapping(value = "/validateLogin", method = RequestMethod.POST)
    public ModelAndView validateLogin(@Validated @ModelAttribute("customer") Customer customer, BindingResult errors) {
        if (errors.hasErrors()) {

            return new ModelAndView("login");
        }

        Boolean validation = loginService.validateLogin(customer);

        if (validation.equals(true)) {
            return new ModelAndView("loginHome");

        }else {
            ModelAndView modelAndView = new ModelAndView("login");
            modelAndView.addObject("validationError", "Invalid Username or Password");
            return modelAndView;
        }

    }


    @InitBinder
    public void initBinder(WebDataBinder webDataBinder) {
        webDataBinder.addValidators(new LoginValidator());
    }
}
