package com.movieticket.booking.models;

//import javax.persistence.Column;
//import javax.persistence.Entity;
import javax.validation.constraints.NotNull;

//@Entity
public class Theatre {

//    @NotNull
//    @Column(name="theatrename")
    private String theatreName;
//    @NotNull
//    @Column(name="city")
    private String city;
//    @NotNull
//    @Column(name="zipcode")
    private int zipcode;

    public Theatre() {
    }

    public Theatre(String theatreName, String city, int zipcode) {
        this.theatreName = theatreName;
        this.city = city;
        this.zipcode = zipcode;
    }

    public String getTheatreName() {
        return theatreName;
    }

    public void setTheatreName(String theatreName) {
        this.theatreName = theatreName;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public int getZipcode() {
        return zipcode;
    }

    public void setZipcode(int zipcode) {
        this.zipcode = zipcode;
    }
}
