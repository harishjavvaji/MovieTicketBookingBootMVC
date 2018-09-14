<style>


    article, aside, details, figcaption, figure,footer, header, hgroup, menu, nav, section {display: block;}
    ol,ul{list-style:none;margin:0px;padding:0px;}
    blockquote,q{quotes:none;}
    blockquote:before,blockquote:after,q:before,q:after{content:'';content:none;}
    table{border-collapse:collapse;border-spacing:0;}
    /* start editing from here */
    a{text-decoration:none;}
    .txt-rt{text-align:right;}/* text align right */
    .txt-lt{text-align:left;}/* text align left */
    .txt-center{text-align:center;}/* text align center */
    .float-rt{float:right;}/* float right */
    .float-lt{float:left;}/* float left */
    .clear{clear:both;}/* clear float */
    .pos-relative{position:relative;}/* Position Relative */
    .pos-absolute{position:absolute;}/* Position Absolute */
    .vertical-base{	vertical-align:baseline;}/* vertical align baseline */
    .vertical-top{	vertical-align:top;}/* vertical align top */
    .underline{	padding-bottom:5px;	border-bottom: 1px solid #eee; margin:0 0 20px 0;}/* Add 5px bottom padding and a underline */
    nav.vertical ul li{	display:block;}/* vertical menu */
    nav.horizontal ul li{	display: inline-block;}/* horizontal menu */
    img{max-width:100%;}
    /*-- Reset Code --*/

    /*-- Index-Page-Styling --*/

    body {
        background: url("../images/bg.jpg");
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-image:url(http://cdn.in.ticketnew.com/Movie/Devi-movie-images/site-images/images/devi_banner_1.jpg);
        background-position: center;
        background-size: cover;
        font-family: 'Open Sans', sans-serif;
    }
    body a {
        transition: 0.5s all;
        -webkit-transition: 0.5s all;
        -moz-transition: 0.5s all;
        -o-transition: 0.5s all;
        -ms-transition: 0.5s all;
    }

    .clear {
        clear: both;
    }

    h1, h2, h3, h4, h5, h6 {
        font-family: 'Raleway', sans-serif;
    }

    h1 {
        text-align: center;
        font-size: 40px;
        font-weight: 900;
        color: #002723;
        margin: 50px 0;
    }

    .container {
        width: 50%;
        padding: 20px;
        background-color: #FFF;
        margin: 0 auto;
        border-radius: 5px;
    }

    h2 {
        background-color: #dddddd;
        padding: 15px;
        color: #d83061;
        font-size: 18px;
        font-weight: 700;
        border-radius: 5px;
    }

    .product-image {
        width: 40%;
        float: left;
    }
    .product-info {
        width: 60%;
        float: left;
        padding: 20px 0;
    }
    .product-info p {
        margin: 10px 10px 10px 100px;
        color: #2C3233;
    }
    span {
        width: 50%;
        float: left;
        color: #FE3A3E;
        font-weight: 600;
    }

    /*-- Ratings --*/
    .rating {
        line-height: 18px;
        display:inline-block;
    }
    .starRating:not(old) {
        display: inline-block;
        height: 18px;
        width:100px;
        overflow: hidden;
    }

    .starRating:not(old) > input{
        margin-right : -100%;
        opacity      : 0;
    }

    .starRating:not(old) > label {
        float: right;
        background: url(../images/star.png);
        background-size: contain;
        margin-right: 2px;
    }

    .starRating:not(old) > label:before{
        content         : '';
        display         : block;
        width           : 18px;
        height          : 18px;
        background      : url(../images/star1.png);
        background-size : contain;
        opacity         : 0;
        transition      : opacity 0.2s linear;
    }

    .starRating:not(old) > label:hover:before,
    .starRating:not(old) > label:hover ~ label:before,
    .starRating:not(:hover) > :checked ~ label:before{
        opacity : 1;
    }
    /*-- //Ratings --*/

    select.dropdown {
        font-family: 'Open Sans', sans-serif;
        color: #424040;
        padding: 2px 10px 2px 5px;
        outline: none;
        border: 1px solid #8E8989;
        border-radius: 3px;
        background-color: #dcdcdc;
    }
    .cart {
        text-align: right;
        margin-top: 40px;
    }
    .cart a {
        padding: 10px 20px;
        background-color: #D53233;
        color: #FFF;
        font-size: 14px;
        font-weight: 600;
        border-radius: 5px;
    }


    .ac-container label {
        padding: 5px 20px;
        position: relative;
        z-index: 20;
        display: block;
        cursor: pointer;
        color: #777;
        line-height: 33px;
        font-size: 16px;
        font-weight: 600;
        border-radius: 5px;
        margin-bottom: 5px;
        background: #dedede;
    }

    .ac-container input{
        display: none;
    }
    .ac-container article{
        background: rgba(255, 255, 255, 0.5);
        margin-top: -1px;
        overflow: hidden;
        height: 0px;
        position: relative;
        z-index: 10;
        -webkit-transition: height 0.3s ease-in-out, box-shadow 0.6s linear;
        -moz-transition: height 0.3s ease-in-out, box-shadow 0.6s linear;
        -o-transition: height 0.3s ease-in-out, box-shadow 0.6s linear;
        -ms-transition: height 0.3s ease-in-out, box-shadow 0.6s linear;
        transition: height 0.3s ease-in-out, box-shadow 0.6s linear;
    }


    @media screen and (max-width: 768px) {
        .container {
            width: 80%;
        }
    }


</style>
<!DOCTYPE html>
<html>
<body>
<div class="content">
    <h1>Availablity of Movies</h1>
    <div class="container">

        <h2>Screen 1</h2>

        <div class="product">
            <div class="product-image">
                <img src="https://data1.ibtimes.co.in/cache-img-0-450/en/full/698868/1536766974_u-turn.jpg" alt="Ferrari">
            </div>
            <div class="product-info">
                <p><span>Price</span>$12.00</p>
                <p><span>Availability</span>yes</p>
                <p><span>Rating</span>
                <div class="rating">
					<span class="starRating">
						<input id="rating5" type="radio" name="rating" value="5">
						<label for="rating5">5</label>
						<input id="rating4" type="radio" name="rating" value="4">
						<label for="rating4">4</label>
						<input id="rating3" type="radio" name="rating" value="3" checked>
						<label for="rating3">3</label>
						<input id="rating2" type="radio" name="rating" value="2">
						<label for="rating2">2</label>
						<input id="rating1" type="radio" name="rating" value="1">
						<label for="rating1">1</label>
					  </span>
                </div>
                <div class="clear"></div>
                </p>
                <p><span>Quantity</span>
                    <select class="dropdown" tabindex="10" data-settings='{"wrapperClass":"flat"}'>
                        <option value="">-</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                    </select>
                </p>
                <div class="cart"><a href="#">Book Now</a></div>
            </div>
            <div class="clear"></div>
        </div>

        <div class="accordion">
            <section class="ac-container">
                <div>
                    <input id="ac-3" name="accordion-1" type="checkbox" />
                    <label for="ac-3">Rating & Reviews (40+)</label>
                    <article class="ac-large ac-review">
                        <h3>"Excellent Fragrance!"</h3>
                        <h4>Reno Jean, Certified Buyer.</h4>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                        <span>5 Stars</span>
                        <a href="#" class="next">Next Review &rarr;</a>
                    </article>
                </div>

            </section>
        </div>

    </div>

    </br>

    <div class="container">

        <h2>Screen 2</h2>

        <div class="product">
            <div class="product-image">
                <img src="https://data1.ibtimes.co.in/cache-img-0-450/en/full/697660/1535574300_imaikkaa-nodigal.jpg" alt="Ferrari">
            </div>
            <div class="product-info">
                <p><span>Price</span>$12.00</p>
                <p><span>Availability</span>yes</p>
                <p><span>Rating</span>
                <div class="rating">
					<span class="starRating">
						<input id="rating5" type="radio" name="rating" value="5">
						<label for="rating5">5</label>
						<input id="rating4" type="radio" name="rating" value="4">
						<label for="rating4">4</label>
						<input id="rating3" type="radio" name="rating" value="3" checked>
						<label for="rating3">3</label>
						<input id="rating2" type="radio" name="rating" value="2">
						<label for="rating2">2</label>
						<input id="rating1" type="radio" name="rating" value="1">
						<label for="rating1">1</label>
					  </span>
                </div>
                <div class="clear"></div>
                </p>
                <p><span>Quantity</span>
                    <select class="dropdown" tabindex="10" data-settings='{"wrapperClass":"flat"}'>
                        <option value="">-</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                    </select>
                </p>
                <div class="cart"><a href="#">Book Now</a></div>
            </div>
            <div class="clear"></div>
        </div>

        <div class="accordion">
            <section class="ac-container">
                <div>
                    <input id="ac-3" name="accordion-1" type="checkbox" />
                    <label for="ac-3">Rating & Reviews (40+)</label>
                    <article class="ac-large ac-review">
                        <h3>"Excellent Fragrance!"</h3>
                        <h4>Reno Jean, Certified Buyer.</h4>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                        <span>5 Stars</span>
                        <a href="#" class="next">Next Review &rarr;</a>
                    </article>
                </div>

            </section>
        </div>

    </div>
    </br>
    <div class="container">

        <h2>Screen 3</h2>

        <div class="product">
            <div class="product-image">
                <img src="http://digitalspyuk.cdnds.net/16/03/980x490/landscape-1453464693-movies-avatar-still-02.jpg" alt="Ferrari">
            </div>
            <div class="product-info">
                <p><span>Price</span>$12.00</p>
                <p><span>Availability</span>yes</p>
                <p><span>Rating</span>
                <div class="rating">
					<span class="starRating">
						<input id="rating5" type="radio" name="rating" value="5">
						<label for="rating5">5</label>
						<input id="rating4" type="radio" name="rating" value="4">
						<label for="rating4">4</label>
						<input id="rating3" type="radio" name="rating" value="3" checked>
						<label for="rating3">3</label>
						<input id="rating2" type="radio" name="rating" value="2">
						<label for="rating2">2</label>
						<input id="rating1" type="radio" name="rating" value="1">
						<label for="rating1">1</label>
					  </span>
                </div>
                <div class="clear"></div>
                </p>
                <p><span>Quantity</span>
                    <select class="dropdown" tabindex="10" data-settings='{"wrapperClass":"flat"}'>
                        <option value="">-</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                    </select>
                </p>
                <div class="cart"><a href="#">Book Now</a></div>
            </div>
            <div class="clear"></div>
        </div>

        <div class="accordion">
            <section class="ac-container">
                <div>
                    <input id="ac-3" name="accordion-1" type="checkbox" />
                    <label for="ac-3">Rating & Reviews (40+)</label>
                    <article class="ac-large ac-review">
                        <h3>"Excellent Fragrance!"</h3>
                        <h4>Reno Jean, Certified Buyer.</h4>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                        <span>5 Stars</span>
                        <a href="#" class="next">Next Review &rarr;</a>
                    </article>
                </div>

            </section>
        </div>

    </div>

</div>

</body>
<!-- Body-Ends-Here -->

</html>
