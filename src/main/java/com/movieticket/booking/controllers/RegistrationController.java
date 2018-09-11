package com.movieticket.booking.controllers;

import com.movieticket.booking.models.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
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
    public ModelAndView registration(@Valid @ModelAttribute Customer customer, Errors errors) {

        if (errors.hasErrors()) {
            ModelAndView modelAndView = new ModelAndView("registration");
            modelAndView.addObject("error", errors.getAllErrors());
            return modelAndView;
        }

        ResponseEntity<Customer> responseEntity =
                restTemplate.postForEntity("/url",customer, Customer.class);
        int statusCode = responseEntity.getStatusCodeValue();

        if (statusCode >= 200 && statusCode <= 299) {
            return new ModelAndView("home");

        }else {
            ModelAndView modelAndView = new ModelAndView("home");
            modelAndView.addObject("Server is temporarily down");
            return modelAndView;
        }

    }


}
