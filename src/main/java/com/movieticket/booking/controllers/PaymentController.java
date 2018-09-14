package com.movieticket.booking.controllers;

import com.movieticket.booking.models.Ticket;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("ticket")
public class PaymentController {
    @RequestMapping(value = "/payment")
    public ModelAndView viewPayment(@ModelAttribute("ticket") Ticket ticket) {

        ModelAndView modelAndView = new ModelAndView("payment");
        modelAndView.addObject("ticket", ticket);

        return modelAndView;
    }

}
