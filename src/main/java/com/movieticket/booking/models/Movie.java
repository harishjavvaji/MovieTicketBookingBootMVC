package com.movieticket.booking.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Entity
public class Movie {

    @NotNull(message = "Please choose your Movie")
    @Column(name="moviename")
    private String movieName;
    @Column(name="actorname")
    private String actorName;
    @Column(name="genre")
    private String genre;
    @Column(name="length")
    private String length;

    public Movie(String movieName, String actorName, String genre, String length) {
        this.movieName = movieName;
        this.actorName = actorName;
        this.genre = genre;
        this.length = length;
    }

    public Movie() {
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getActorName() {
        return actorName;
    }

    public void setActorName(String actorName) {
        this.actorName = actorName;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getLength() {
        return length;
    }

    public void setLength(String length) {
        this.length = length;
    }
}
