package com.movieticket.booking.controllers;

import com.movieticket.booking.models.Movie;
import com.movieticket.booking.models.Ticket;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TicketController {
    @RequestMapping(value = "/tickets", method = RequestMethod.GET)
    public ModelAndView viewPrices() {
        ModelAndView modelAndView = new ModelAndView("tickets");
        modelAndView.addObject("price", new Ticket());
        return modelAndView;

    }

}
