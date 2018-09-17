package com.movieticket.booking.models;

//import javax.persistence.Column;
//import javax.persistence.Entity;
import javax.validation.constraints.NotNull;

//@Entity
public class Payment {

    private int cardNumber;

    private String cardHolderName;

    private int month;

    private int year;

    private String userName;

    public Payment() {
    }

    public Payment(int cardNumber, String cardHolderName, int month, int year, String userName) {
        this.cardNumber = cardNumber;
        this.cardHolderName = cardHolderName;
        this.month = month;
        this.year = year;
        this.userName = userName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
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
