<style>
    html{
        height: 100%;
    }

    body{
        font-family: "Arial", Helvetica, sans-serif;
        position: relative;
    }

    #container{
        text-align: center;
        position: relative;
        height: 100%;
    }

    #movies_booked, #form{
        display: inline-block;
        width: 40%;
        height: 100%;
        margin: 0 auto;
        vertical-align:text-top;
    }

    fieldset, #movies_booked{
        border:1px solid #AED0EA;
        border-radius:8px;
        box-shadow:0 0 10px #D7EBF9;
    }

    legend, #disount_title{
        color: #2779AA;
        font-size: 120%;
        text-align: center;
        background-color: white;
    }

    p{
        overflow: hidden;
    }

    label{
        width: 50%;
        text-align: right;
        float: left;
        clear: both;
        color: #2779AA;
    }

    p input, p select{
        width: 40%;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        float: left;
        margin-left: 5%;
        margin-right: 5%;
        color: #2779AA;
    }

    #theaters, #total_price, #movies_list, li, #perTicketPrice, #note{
        color: #2779AA;
    }

    p span, li{
        text-align: left;
    }

    #submit_wrapper{
        text-align: center;
    }

    #submit{
        font-size: 13px;
    }

    #discount, #perTicketPrice{
        text-align: left;
    }

    #dateNote{
        font-size: 9px;
    }
    ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
        overflow: hidden;
        background-color:;
    }

    li {
        float: left;
    }

    li a {
        display: block;
        color: white;
        text-align: center;
        padding: 30px 50px;
        text-decoration: none;
    }


</style>


<div id="container">
    <div id="form">
        <form id="book_tickets">
            <fieldset>
                <legend>Booking Details</legend>

                <p>
                    <label for="movie_name">Movie</label>
                    <select id="movie_name" name="movie_name" required autofocus>
                        <option></option>
                        <option value="Movie 1">Movie 1</option>
                        <option value="Movie 2">Movie 2</option>
                        <option value="Movie 3">Movie 3</option>
                    </select>
                </p>

                <p>
                    <label for="theaters">Theaters</label>
                    <select id="theaters" required>
                        <option></option>
                        <option value="Theater 1">Theater 1</option>
                        <option value="Theater 2">Theater 2</option>
                        <option value="Theater 3">Theater 3</option>
                    </select>
                </p>

                <p>
                    <label for="date">Date<br/><span id="dateNote">Firefox does not have a HTML5 datepicker <a href="https://support.mozilla.org/en-US/questions/986096">yet</a>.</span></label>
                    <input type="date" name="date" id="date" min="today" required />
                </p>

                <p>
                    <label for="email">Email</label>
                    <input type="email" name="email" id="email" required />
                </p>

                <p>
                    <label for="tickets_quantity"># Tickets</label>
                    <input type="number" min="1" name="tickets_quantity" id="tickets_quantity" required />
                </p>

                <p>
                    <label>Total Price</label>
                    <span id="total_price">(enter data first)</span>
                </p>
                <div id="submit_wrapper">
                    <input type="submit" id="submit" value="Book Tickets" />
                </div>
            </fieldset>
        </form>
        <p id="perTicketPrice">Per ticket price = &#x20b9; 100.00</p>
        <p id="discount">
            <span id="disount_title">Discounts:</span>
        <ul>
            <li>5% discount if show is on weekday</li>
            <li>10% discount if number of booked shows >= 10</li>
        </ul>
        </p>
    </div>

    <fieldset id="movies_booked">
        <legend>Movies Booked Till Date</legend>
        <span id="movies_list"></span>
    </fieldset>

</div>


