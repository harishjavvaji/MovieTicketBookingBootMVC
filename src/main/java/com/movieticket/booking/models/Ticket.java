package com.movieticket.booking.models;



public class Ticket {
    private int id;

    private int numberOfAdultTickets;

    private int numberOfChildTickets;

    private final double adultTicketPrice = 12.75;

    private final double childTicketPrice = 8.75;

    private double totalPrice;

    private String userName;

    private String movieName;

    private String theatreName;

    public Ticket(int id, int numberOfAdultTickets, int numberOfChildTickets, double totalPrice, String userName, String movieName, String theatreName) {
        this.id = id;
        this.numberOfAdultTickets = numberOfAdultTickets;
        this.numberOfChildTickets = numberOfChildTickets;
        this.totalPrice = totalPrice;
        this.userName = userName;
        this.movieName = movieName;
        this.theatreName = theatreName;
    }

    public Ticket() {
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getTheatreName() {
        return theatreName;
    }

    public void setTheatreName(String theatreName) {
        this.theatreName = theatreName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
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
