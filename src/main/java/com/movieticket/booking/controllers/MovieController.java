package com.movieticket.booking.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MovieController {

    @RequestMapping(value = "/movies", method = RequestMethod.GET)
    public ModelAndView viewMovies() {
        ModelAndView modelAndView = new ModelAndView("movies");
        return modelAndView;

    }



}
