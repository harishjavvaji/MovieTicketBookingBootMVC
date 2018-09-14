package com.movieticket.booking.controllers;

import com.movieticket.booking.models.Customer;
import com.movieticket.booking.validators.RegistrationValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Controller
public class RegistrationController {
    @Autowired
    RestTemplate restTemplate;

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public ModelAndView viewRegistration() {
        return new ModelAndView("registration");
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public ModelAndView registration(@Validated @ModelAttribute Customer customer, BindingResult errors) {


        if (errors.hasErrors()) {
            return new ModelAndView("registration");
        }

        ResponseEntity<Integer> responseEntity =
                restTemplate.postForEntity("http://localhost:8085/customers",customer, Integer.class);

        int statusCode = responseEntity.getStatusCodeValue();

            if (statusCode >= 200 && statusCode <= 299) {
                return new ModelAndView("login");

            } else {
                ModelAndView modelAndView = new ModelAndView("home");
                modelAndView.addObject("Server is temporarily down");
                return modelAndView;
            }


    }


    @InitBinder
    public void initBinder(WebDataBinder webDataBinder) {
        webDataBinder.addValidators(new RegistrationValidator());
    }


}
