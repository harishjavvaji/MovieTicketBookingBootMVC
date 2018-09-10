package com.movieticket.booking.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MovieController {

    @Autowired
    RestTemplate restTemplate;
    @RequestMapping(value = "/movies", method = RequestMethod.GET)
    public ModelAndView viewMovies() {
        ModelAndView modelAndView = new ModelAndView("movies");

        return modelAndView;

    }




}
