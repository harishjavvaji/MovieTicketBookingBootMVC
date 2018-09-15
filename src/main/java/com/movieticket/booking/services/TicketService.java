package com.movieticket.booking.services;

import com.movieticket.booking.models.Customer;
import com.movieticket.booking.models.Ticket;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.client.RestTemplate;

@Service
public class TicketService {
    @Autowired
    RestTemplate restTemplate;

    public Ticket confirmTicket(Ticket ticket) {

        ResponseEntity<Ticket> responseEntity =
                restTemplate.postForEntity("http://localhost:8085/tickets", ticket, Ticket.class);

        return responseEntity.getBody();



    }
}
