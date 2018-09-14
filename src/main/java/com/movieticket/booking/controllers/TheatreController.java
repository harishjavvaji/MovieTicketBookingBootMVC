package com.movieticket.booking.controllers;

import com.movieticket.booking.models.Movie;
import com.movieticket.booking.models.Theatre;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes
public class TheatreController {
    @Autowired
    RestTemplate restTemplate;
    @RequestMapping(value = "/theatres", method = RequestMethod.GET)
    public ModelAndView viewAllTheatres(Model model) {
        ModelAndView modelAndView = new ModelAndView("theatre1");
        model.addAttribute("theatre", new Theatre());

        ResponseEntity<Theatre[]> responseEntity =
                restTemplate.getForEntity("http://localhost:8085/theatres", Theatre[].class);
        int statusCode = responseEntity.getStatusCodeValue();

        if (statusCode >= 200 && statusCode <= 299) {
            Theatre[] theatres = responseEntity.getBody();
            modelAndView.addObject("theatreArray", theatres);

        }else {
            modelAndView.addObject("Server is temporarily down");
        }

        return modelAndView;

    }

    @RequestMapping(value = "/booktheatre", method = RequestMethod.POST)
    public ModelAndView bookMovie(@ModelAttribute("theatre") Theatre theatre) {
        ModelAndView modelAndView = new ModelAndView("movies1");

        ResponseEntity<Movie[]> responseEntity =
                restTemplate.postForEntity("http://localhost:8085/theatres", theatre, Movie[].class);
        int statusCode = responseEntity.getStatusCodeValue();

        if (statusCode >= 200 && statusCode <= 299) {
            Movie[] movies = responseEntity.getBody();
            modelAndView.addObject("movies", movies);
        }else
            modelAndView.addObject("Server is temporarily down");

        return modelAndView;
    }


}
