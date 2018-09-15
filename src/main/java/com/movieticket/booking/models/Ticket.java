package com.movieticket.booking.models;



public class Ticket {
    private int id;

    private int numberOfAdultTickets;

    private int numberOfChildTickets;

    private final double adultTicketPrice = 12.75;

    private final double childTicketPrice = 8.75;

    private double totalPrice;

    public Ticket(int id, int numberOfAdultTickets, int numberOfChildTickets, int totalPrice) {
        this.id = id;
        this.numberOfAdultTickets = numberOfAdultTickets;
        this.numberOfChildTickets = numberOfChildTickets;
        this.totalPrice = totalPrice;
    }

    public Ticket() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getNumberOfAdultTickets() {
        return numberOfAdultTickets;
    }

    public void setNumberOfAdultTickets(int numberOfAdultTickets) {
        this.numberOfAdultTickets = numberOfAdultTickets;
    }

    public int getNumberOfChildTickets() {
        return numberOfChildTickets;
    }

    public void setNumberOfChildTickets(int numberOfChildTickets) {
        this.numberOfChildTickets = numberOfChildTickets;
    }

    public double getAdultTicketPrice() {
        return adultTicketPrice;
    }

    public double getChildTicketPrice() {
        return childTicketPrice;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }
}
