package com.movieticket.booking.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.validation.constraints.NotNull;

@Entity
public class Payment {
    @NotNull(message = "CardNumber is required")
    @Column(name = "cardnumber")
    private int cardNumber;
    @NotNull(message = "please provide Cardholder Name")
    @Column(name = "cardholdername")
    private String cardHolderName;
    @NotNull(message = "Month is required")
    @Column(name = "month")
    private int month;
    @NotNull(message = "Year is required")
    @Column(name = "year")
    private int year;

    public Payment() {
    }

    public Payment(int cardNumber, String cardHolderName, int month, int year) {

        this.cardNumber = cardNumber;
        this.cardHolderName = cardHolderName;
        this.month = month;
        this.year = year;
    }

    public int getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(int cardNumber) {
        this.cardNumber = cardNumber;
    }

    public String getCardHolderName() {
        return cardHolderName;
    }

    public void setCardHolderName(String cardHolderName) {
        this.cardHolderName = cardHolderName;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }
}
