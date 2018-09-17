package com.movieticket.booking.services;

import com.movieticket.booking.models.Customer;
import com.movieticket.booking.models.Movie;
import com.movieticket.booking.models.Theatre;
import com.movieticket.booking.models.Ticket;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.client.RestTemplate;

import java.util.Map;

@Service
public class TicketService {
    @Autowired
    RestTemplate restTemplate;

    public Ticket confirmTicket(Ticket ticket) {

        ResponseEntity<Ticket> responseEntity =
                restTemplate.postForEntity("http://localhost:8085/tickets", ticket, Ticket.class);

        return responseEntity.getBody();

    }

    public Ticket viewTickets(Customer customer) {

        ResponseEntity<Ticket> responseEntity =
                restTemplate.postForEntity("http://localhost:8085/ticket", customer, Ticket.class);

        return responseEntity.getBody();


    }

    public Movie getMovie(Movie movie) {

        ResponseEntity<Movie> responseEntity =
                restTemplate.postForEntity("http://localhost:8085/movies", movie, Movie.class);

        return responseEntity.getBody();


    }

    public Theatre getTheatre(Theatre theatre) {
        ResponseEntity<Theatre> responseEntity =
                restTemplate.postForEntity("http://localhost:8085/movies", theatre, Theatre.class);

        return responseEntity.getBody();

    }

    public int cancelTicket(Customer customer) {
        ResponseEntity<Customer> responseEntity =
                restTemplate.postForEntity("http://localhost:8085/cancelticket", customer, Customer.class);

        return responseEntity.getStatusCodeValue();
    }
}
