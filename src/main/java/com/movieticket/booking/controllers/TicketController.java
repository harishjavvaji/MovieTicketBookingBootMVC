package com.movieticket.booking.controllers;

import com.movieticket.booking.models.Customer;
import com.movieticket.booking.models.Movie;
import com.movieticket.booking.models.Theatre;
import com.movieticket.booking.models.Ticket;
import com.movieticket.booking.services.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import javax.servlet.http.HttpSession;

@Controller
@SessionAttributes("theatre")
public class TicketController {
    @Autowired
    LoginController loginController;

    @Autowired
    TicketService ticketService;

    @RequestMapping(value = "/tickets", method = RequestMethod.GET)
    public ModelAndView viewPrices() {
        ModelAndView modelAndView = new ModelAndView("tickets");
        modelAndView.addObject("price", new Ticket());
        return modelAndView;

    }
    @ModelAttribute("theatre")
    public Theatre sessionTheatre() {
        return new Theatre();
    }

    @RequestMapping(value = "/bookticket", method = RequestMethod.POST)
    public ModelAndView navigateCustomer(@ModelAttribute("theatre")Theatre theatre,
                                         @SessionAttribute("customer") Customer customer,
                                         Model model) {
        ModelAndView modelAndView = new ModelAndView();
        if (null == customer.getUserName()) {
            return loginController.viewLogin(model);

        } else {
            modelAndView.setViewName("selecttickets");
            modelAndView.addObject("ticket", new Ticket());
            modelAndView.addObject(theatre);
            return modelAndView;
        }

    }

    @RequestMapping(value = "/viewtickets", method = RequestMethod.GET)
    public ModelAndView viewTickets(@SessionAttribute("customer")Customer customer) {


        ModelAndView modelAndView = new ModelAndView("summary");

        Ticket ticket = ticketService.viewTickets(customer);

        Movie movie = new Movie();
        movie.setMovieName(ticket.getMovieName());
        Movie movie1 = ticketService.getMovie(movie);

        Theatre theatre = new Theatre();
        theatre.setTheatreName(ticket.getTheatreName());
        Theatre theatre1 = ticketService.getTheatre(theatre);

        modelAndView.addObject("ticket", ticket);
        modelAndView.addObject("movie", movie1);
        modelAndView.addObject("theatre", theatre1);

        return modelAndView;


    }

    @RequestMapping(value = "/cancelticket", method = RequestMethod.GET)
    public ModelAndView cancelTicket(@SessionAttribute("customer") Customer customer) {
        int statusCode = ticketService.cancelTicket(customer);
        ModelAndView modelAndView = new ModelAndView("loginHome1");

        if (statusCode >= 200 && statusCode <= 299) {
            modelAndView.addObject("message", "Ticket Cancelled Successfully");
            return modelAndView;
        }else {
            modelAndView.addObject("message", "Something went wrong!!");
            return modelAndView;
        }


    }

}
