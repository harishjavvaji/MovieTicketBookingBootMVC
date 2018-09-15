package com.movieticket.booking.controllers;

import com.movieticket.booking.models.Theatre;
import com.movieticket.booking.models.Ticket;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import javax.servlet.http.HttpSession;

@Controller
public class TicketController {
    @Autowired
    LoginController loginController;

    @RequestMapping(value = "/tickets", method = RequestMethod.GET)
    public ModelAndView viewPrices() {
        ModelAndView modelAndView = new ModelAndView("tickets");
        modelAndView.addObject("price", new Ticket());
        return modelAndView;

    }

    @RequestMapping(value = "/bookticket", method = RequestMethod.POST)
    public ModelAndView navigateCustomer(@ModelAttribute("theatre")Theatre theatre,
                                         HttpSession session,
                                         Model model) {
        ModelAndView modelAndView = new ModelAndView();
        if (null == session.getAttribute("customer")) {
            return loginController.viewLogin(model);

        } else {
            modelAndView.setViewName("payment2");
            modelAndView.addObject(theatre);
            return modelAndView;
        }


    }
}
