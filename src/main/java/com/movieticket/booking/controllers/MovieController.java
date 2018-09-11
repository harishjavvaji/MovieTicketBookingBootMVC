package com.movieticket.booking.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import com.movieticket.booking.models.*;

import javax.validation.Valid;

@Controller
public class MovieController {

    @Autowired
    RestTemplate restTemplate;
    @RequestMapping(value = "/movies", method = RequestMethod.GET)
    public ModelAndView viewMovies() {
        ModelAndView modelAndView = new ModelAndView("movies");

        ResponseEntity<Movie[]> responseEntity =
                restTemplate.getForEntity("/url", Movie[].class);
        int statusCode = responseEntity.getStatusCodeValue();

        if (statusCode >= 200 && statusCode <= 299) {
            Movie[] movies = responseEntity.getBody();
            modelAndView.addObject("moviesArray", movies);
        }else {
            modelAndView.addObject("Server is temporarily down");
        }

        return modelAndView;

    }

    @RequestMapping(value = "/bookmovie", method = RequestMethod.GET)
    public ModelAndView bookMovie(@Valid @ModelAttribute("movie") Movie movie) {
        ModelAndView modelAndView = new ModelAndView("theatres");

        ResponseEntity<Theatre[]> responseEntity =
        restTemplate.getForEntity("/url", Theatre[].class);

        int statusCode = responseEntity.getStatusCodeValue();
        if (statusCode >= 200 && statusCode <= 299) {
            Theatre[] theatres = responseEntity.getBody();
            modelAndView.addObject("theatres", theatres);
        }else
            modelAndView.addObject("Server is temporarily down");

        return modelAndView;
    }










}
