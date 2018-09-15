package com.movieticket.booking.controllers;

import com.movieticket.booking.models.*;
import com.movieticket.booking.services.TicketService;
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
    @Autowired
    TicketService ticketService;

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
    public ModelAndView confirmPayment(@ModelAttribute Payment payment, @SessionAttribute("customer")Customer customer,
                                       @SessionAttribute("ticket") Ticket ticket, @SessionAttribute("theatre") Theatre theatre,
                                       @SessionAttribute("movie") Movie movie) {
        ticket.setUserName(customer.getUserName());
        ticket.setMovieName(movie.getMovieName());
        ticket.setTheatreName(theatre.getTheatreName());


        payment.setUserName(customer.getUserName());

        ticketService.confirmTicket(ticket);



        ResponseEntity<Payment> responseEntity =
                restTemplate.postForEntity("http://localhost:8085/payments", payment, Payment.class);


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
