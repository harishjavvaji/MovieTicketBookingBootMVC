package com.movieticket.booking.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import com.movieticket.booking.models.*;

import javax.validation.Valid;

@Controller
@SessionAttributes("movie")
public class MovieController {

    @Autowired
    RestTemplate restTemplate;
    @RequestMapping(value = "/movies", method = RequestMethod.GET)
    public ModelAndView viewMovies(Model model) {
        ModelAndView modelAndView = new ModelAndView("movies1");
        model.addAttribute("movie", new Movie());

        ResponseEntity<Movie[]> responseEntity =
                restTemplate.getForEntity("http://localhost:8085/movies", Movie[].class);
        int statusCode = responseEntity.getStatusCodeValue();

        if (statusCode >= 200 && statusCode <= 299) {
            Movie[] movies = responseEntity.getBody();
            modelAndView.addObject("moviesArray", movies);

        }else {
            modelAndView.addObject("Server is temporarily down");
        }

        return modelAndView;

    }

    @RequestMapping(value = "/bookmovie", method = RequestMethod.POST)
    public ModelAndView bookMovie(@ModelAttribute("movie") Movie movie, Model model) {
        ModelAndView modelAndView = new ModelAndView("theatre1");
        model.addAttribute(new Theatre());


        ResponseEntity<Theatre[]> responseEntity =
                restTemplate.postForEntity("http://localhost:8085/theatres", movie, Theatre[].class);
        int statusCode = responseEntity.getStatusCodeValue();

        if (statusCode >= 200 && statusCode <= 299) {
            Theatre[] theatres = responseEntity.getBody();
            modelAndView.addObject("theatres", theatres);
        }else
            modelAndView.addObject("Server is temporarily down");

        return modelAndView;
    }



}
