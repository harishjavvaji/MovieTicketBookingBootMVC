package com.movieticket.booking.controllers;

import com.movieticket.booking.models.Customer;
import com.movieticket.booking.services.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.security.auth.login.LoginContext;
import javax.validation.Valid;

@Controller
@SessionAttributes("customer")
public class LoginController {
    @Autowired
    LoginService loginService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView viewLogin() {

        ModelAndView modelAndView = new ModelAndView("login");
        modelAndView.addObject(new Customer());
        return modelAndView;

    }

    @RequestMapping(value = "/validateLogin", method = RequestMethod.POST)
    public ModelAndView validateLogin(@Valid @ModelAttribute("customer")Customer customer, Errors errors) {
        if (errors.hasErrors()) {

            ModelAndView modelAndView = new ModelAndView("login");
            modelAndView.addObject("error", errors.getAllErrors());
            return modelAndView;
        }

        Boolean validation = loginService.validateLogin(customer);

        if (validation.equals(true)) {
            return new ModelAndView("loginhome");

        }else {
            ModelAndView modelAndView = new ModelAndView("login");
            modelAndView.addObject("validationError", "Invalid Username or Password");
            return modelAndView;
        }
    }
}
