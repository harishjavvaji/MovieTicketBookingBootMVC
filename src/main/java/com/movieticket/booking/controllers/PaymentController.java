package com.movieticket.booking.controllers;

import com.movieticket.booking.models.Customer;
import com.movieticket.booking.models.Payment;
import com.movieticket.booking.models.Ticket;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("ticket")
public class PaymentController {
    @Autowired
    RestTemplate restTemplate;

    @RequestMapping(value = "/payment")
    public ModelAndView viewPayment(@ModelAttribute("ticket") Ticket ticket) {

        ticket.setTotalPrice((ticket.getNumberOfAdultTickets() * ticket.getAdultTicketPrice()) +
                (ticket.getNumberOfChildTickets() * ticket.getChildTicketPrice()));

        ModelAndView modelAndView = new ModelAndView("payment2");
        modelAndView.addObject("ticket", ticket);

        return modelAndView;
    }

    @ModelAttribute(value = "ticket")
    public Ticket sessionTicket() {
        return new Ticket();
    }

    @RequestMapping(value = "/payment", method = RequestMethod.POST)
    public ModelAndView confirmPayment(@ModelAttribute Payment payment, @SessionAttribute("customer")Customer customer) {

        payment.setUserName(customer.getUserName());
        System.out.println(customer.getUserName());

        ResponseEntity<Payment> responseEntity =
                restTemplate.postForEntity("http://localhost:8085/payments", payment, Payment.class);

        System.out.println(responseEntity.getBody().getCardNumber());

        int statusCode = responseEntity.getStatusCodeValue();

        if (statusCode >= 200 && statusCode <= 299) {
            return new ModelAndView("loginHome1");

        } else {
            ModelAndView modelAndView = new ModelAndView("home1");
            modelAndView.addObject("Server is temporarily down");
            return modelAndView;
        }


    }
}
