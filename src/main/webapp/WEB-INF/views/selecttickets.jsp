<style>


    /*-- Fonts --*/

    /*-- Reset Code --*/
    html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,dl,dt,dd,ol,nav ul,nav li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline;}
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
        background: url("http://cdn.in.ticketnew.com/Movie/Devi-movie-images/site-images/images/devi_banner_1.jpg");
        background-attachment: fixed;
        background-position: center;
        background-size: cover;
        font-family: 'OpenSans-Regular';
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

    .container {
        width: 55%;
        margin: 0 auto;
    }

    h1 {
        text-align: center;
        font-family: 'FjallaOne-Regular';
        font-size: 45px;
        letter-spacing: 1px;
        color: #EEE;
    }

    .main-bar {
        padding: 20px 10px;
        background-color: #70658A;
        margin-bottom: 30px;
        border-radius: 5px;

    }
    .product {
        width: 65%;
        float: left;
    }
    .product h3 {
        padding-left: 20px;
    }
    .quantity {
        width: 15%;
        float: left;
        text-align: left;
    }
    .price {
        width: 20%;
        float: left;
        text-align: left;
    }
    .main-bar h3 {
        color: #FFF;
        font-size: 20px;
        font-weight: bold;
    }

    .items {
        padding: 20px 10px;
        background-color: #ffffff;
        border-radius: 5px;
    }

    .item1, .item2, .item3 {
        position: relative;
        margin-bottom: 20px;
    }
    .item3 {
        margin-bottom: 0;
    }

    .alert-close1, .alert-close2, .alert-close3 {
        background: url('../images/close1.png') no-repeat 0px 0;
        cursor: pointer;
        height: 22px;
        width: 22px;
        position: absolute;
        right: 0;
        top: 20px;
        -webkit-transition: color 0.2s ease-in-out;
        -moz-transition: color 0.2s ease-in-out;
        -o-transition: color 0.2s ease-in-out;
        transition: color 0.2s ease-in-out;
    }
    img {
        padding-left: 20px;
    }

    .title1, .title2, .title3 {
        width: 45%;
        float: left;
    }
    .quantity1, .quantity2, .quantity3 {
        width: 15%;
        float: left;
        text-align: right;
    }
    .price1, .price2, .price3 {
        width: 20%;
        float: left;
        text-align: right;
    }
    p {
        margin-top: 15px;
        color: #8D8E98;
    }
    .quantity1 input[type="number"], .quantity2 input[type="number"], .quantity3 input[type="number"] {
        width: 70%;
        margin-top: 10px;
        padding: 7px 5px;
        text-align: center;
        margin-left: 10px;
        font-size: 16px;
        outline: none;
        border: 2px solid #b6c0c9;
        border-radius: 5px;
        color: #b6c0c9;
    }

    .total {
        padding: 0 30px;
        margin: 10px 0;
        color: deeppink;
    }
    .total1, .total2 {
        width: 50%;
        float: left;
        font-size: 23px;
        font-weight: bold;
        color: #47484A;
    }
    .total2 {
        text-align: left;
        color: white;
    }

    .checkout {
        background-color: #FFF;
        border-radius: 5px;
        padding: 20px;
        text-align: center;
    }
    .discount {
        width: 50%;
        float: left;
    }
    .discount span {
        color: #898989;
        font-weight: bold;
    }
    .discount input[type="text"] {
        padding: 7px 5px;
        width: 25%;
        text-align: center;
        margin-left: 20px;
        font-size: 16px;
        outline: none;
        border: 2px solid #b6c0c9;
        border-radius: 5px;
        color: #b6c0c9;
    }
    .add {
        width: 20%;
        float: left;
        padding-top: 7px;
    }
    .add a {
        color: #70658a;
        font-weight: bold;
    }
    .add a:hover {
        color: #33C39B;
    }
    .checkout-btn {
        width: 30%;
        float: left;
        padding-top: 7px;
    }
    .checkout-btn a {
        padding: 7px 30px;
        color: #FFF;
        font-weight: bold;
        background-color: #70658a;
        border-radius: 5px;
    }
    .checkout-btn a:hover {
        background-color: #33C39B;
    }

    .copyright {
        margin: 50px 0 20px 0;
        text-align: center;
    }
    .copyright p {
        color: #333;
    }
    .copyright a {
        color: #000;
        text-decoration: none;
    }
    .copyright a:hover {
        color: #0092ff;
        text-decoration: underline;
    }

    /*-- Index-Page-Styling --*/

    /*--- Responsive Code ---*/

    @media screen and (max-width: 1920px) {
        h1 {
            padding: 60px 0;
            font-size: 50px;
        }
        .container {
            width: 40%;
        }
        .copyright {
            margin-top: 200px;
        }
    }

    @media screen and (max-width: 1680px) {
        .container {
            width: 45%;
        }
    }

    @media screen and (max-width: 1600px) {
        .container {
            width: 47%;
        }
        .copyright {
            margin-top: 100px;
        }
    }

    @media screen and (max-width: 1440px) {
        .container {
            width: 52%;
        }
    }

    @media screen and (max-width: 1366px) {
        h1 {
            padding: 35px 0;
            font-size: 45px;
        }
        .container {
            width: 55%;
        }
        .main-bar {
            padding: 15px 10px;
            margin-bottom: 10px;
        }
        .total {
            margin: 0px 60px;
            color: #4CAF50;
        }
        .copyright {
            margin-top: 55px;
        }
    }

    @media screen and (max-width: 1280px) {
        .container {
            width: 58%;
        }
    }

    @media screen and (max-width: 1080px) {
        .container {
            width: 70%;
        }
    }


    @media screen and (max-width: 1024px) {
        .container {
            width: 73%;
        }
    }

    @media screen and (max-width: 991px) {
        .container {
            width: 77%;
        }
    }

    @media screen and (max-width: 900px) {
        .container {
            width: 82%;
        }
    }

    @media screen and (max-width: 853px) {
        .container {
            width: 87%;
        }
    }

    @media screen and (max-width: 800px) {
        .container {
            width: 90%;
        }
    }

    @media screen and (max-width: 736px) {
        h1 {
            font-size: 40px;
        }
        .image1, .image2, .image3 {
            width: 15%;
        }
        img {
            padding-left: 10px;
        }
        .title1, .title2, .title3 {
            width: 50%;
            text-indent: 10px;
        }
        .discount input[type="text"] {
            margin-left: 15px;
        }
    }

    @media screen and (max-width: 667px) {
        .title1, .title2, .title3 {
            text-indent: 15px;
            font-size: 14px;
        }
        .checkout {
            padding: 10px 20px;
        }
        .discount span {
            font-size: 14px;
        }
    }

    @media screen and (max-width: 640px) {
        .title3 p {
            padding-left: 18px;
            text-indent: 0;
        }
        .alert-close1, .alert-close2, .alert-close3 {
            right: -10px;
        }
    }

    @media screen and (max-width: 600px) {
        .title1 p, .title2 p, .title3 p {
            padding-left: 25px;
            text-indent: 0;
            margin-top: 5px;
        }
    }

    @media screen and (max-width: 568px) {
        .main-bar {
            padding: px px;
        }
        .main-bar h3 {
            font-size: 18px;
            text-align:left;
        }
        .title1 p, .title2 p, .title3 p {
            padding-left: 25px;
            text-indent: 0;
            margin-top: 5px;
        }
        .quantity1 input[type="number"], .quantity2 input[type="number"], .quantity3 input[type="number"] {
            margin-top: 3px;
            padding: 7px 0px;
        }
    }

    @media screen and (max-width: 533px) {
        p {
            margin-top: 10px;
        }
        .checkout {
            padding: 10px 0px;
        }
        .total1, .total2 {
            font-size: 20px;
            color: darkturquoise;
        }
        .discount input[type="text"] {
            margin-left: 5px;
        }
        .checkout-btn a {
            padding: 7px 25px;
        }
        .alert-close1, .alert-close2, .alert-close3 {
            top: 15px;
        }
    }

    @media screen and (max-width: 480px) {
        .title1 p, .title2 p, .title3 p {
            margin-top: 70px;
        }
        .main-bar h3 {
            font-size: 16px;
        }
        .title1, .title2, .title3 {
            width: 45%;
        }
        .quantity1, .quantity2, .quantity3 {
            width: 20%;
        }
        .quantity1 input[type="number"], .quantity2 input[type="number"], .quantity3 input[type="number"] {
            margin-top: 0px;
        }
        p {
            margin-top: 5px;
        }
        .alert-close1, .alert-close2, .alert-close3 {
            top: 10px;
        }
        .discount {
            width: 100%;
            margin-bottom: 15px;
        }
        .discount input[type="text"] {
            margin-left: 20px;
            padding: 5px;
        }
        .add, .checkout-btn {
            width: 50%;
        }
        .add a {
            margin-left: 20px;
        }
        .checkout-btn a {
            padding: 5px 24px;
            margin-right: 50px;
        }
        .copyright {
            margin: 50px 20px 20px;
            font-size: 14px;
        }
    }

    @media screen and (max-width: 414px) {
        .container {
            width: 50%;
        }
        .title1 p, .title2 p, .title3 p {
            font-size: 13px;
        }
        .quantity1 input[type="number"], .quantity2 input[type="number"], .quantity3 input[type="number"] {
            margin-top: 3px;
            padding: 10px 10px;
            font-size: 12px;
            margin-left: 5px;
        }
        .price1 p, .price2 p, .price3 p {
            margin-right: 0px;
        }
        .alert-close1, .alert-close2, .alert-close3 {
            top: 11px;
        }
        .total {
            padding: 10px;
            color: darkturquoise;
        }
        .add a {
            margin-left: 5px;
        }
        .checkout-btn a {
            padding: 5px 20px;
            margin-right: 35px;
        }
    }

    @media screen and (max-width: 384px) {
        h1 {
            font-size: 35px;
        }
        .product {
            width: 60%;
        }
        .quantity {
            width: 20%;
        }
        .items {
            padding: 20px 0px;
        }
        .alert-close1, .alert-close2, .alert-close3 {
            right: -5px;
        }
        img {
            padding-left: 5px;
        }
        .title1 p, .title2 p, .title3 p {
            padding-left: 15px;
        }
        .total {
            padding: 0 00px;
            color: #1E29B5;
        }
        .checkout {
            padding-bottom: 15px;
        }
        .add a {
            margin-left: 0;
        }
        .checkout-btn a {
            margin-right: 13px;
        }
        .price1 p, .price2 p, .price3 p {
            margin-right: 20px;
        }
    }

    @media screen and (max-width: 360px) {
        .title1, .title2, .title3 {
            width: 43%;
        }
        .title1 p, .title2 p, .title3 p {
            font-size: 12px;
        }
        .quantity1, .quantity2, .quantity3 {
            text-align: left;
        }
        .price1, .price2, .price3 {
            width: 22%;
        }
        .price1 p, .price2 p, .price3 p {
            margin-right: 20px;
        }
        .checkout-btn a {
            margin-right: 15px;
        }
    }

    @media screen and (max-width: 320px) {
        .product {
            width: 25%;
        }
        img {
            padding-top: 10px;
        }
        .quantity {
            width: %;
        }
        .title1, .title2, .title3 {
            width: 40%;
        }
        .price1, .price2, .price3 {
            width: 25%;
        }
        .price1 p, .price2 p, .price3 p {
            margin-right: px;
            font-size: 15px;
        }
        .checkout-btn a {
            margin-right: 5px;
        }
    }

    /*--- Responsive Code ---*/

</style>

<html>


<!-- Body-Starts-Here -->
<body>
<div class="tabs-box">
    <ul class="tabs-menu">
        <li><a href="/loginhome1">HOME</a></li>
        <li><a href="/movies">MOVIES</a></li>
        <li><a href="/viewtickets">VIEW BOOKING</a></li>
        <li><a href="/logout" class="special">LOG OUT</a></li>
        <div class="clearfix"></div>
    </ul>
    <div class="clearfix"> </div>


<h1>Movie Ticket Booking</h1>

<!-- Content-Starts-Here -->
<div class="container">

    <!-- Mainbar-Starts-Here -->
    <div class="main-bar">
        <div class="product">
            <h3>Ticket</h3>
        </div>
        <div class="quantity">
            <h3>Quantity</h3>
        </div>
        <div class="price">
            <h3>Price</h3>
        </div>
        <div class="clear"></div>
    </div>
    <!-- //Mainbar-Ends-Here -->
<form action="/payment" method="get">
    <!-- Items-Starts-Here -->
    <div class="items">

        <!-- Item1-Starts-Here -->
        <div class="item1">
            <div class="close1">
                <!-- Remove-Item --><div class="alert-close1"> </div><!-- //Remove-Item -->

                <div class="title1">
                    <p>Child</p>
                </div>
                <div class="quantity1">
                        <input type="number" name="numberOfChildTickets" min="0" max="10" value="0">
                </div>
                <div class="price1">
                    <p>$ ${ticket.getChildTicketPrice()}</p>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <!-- //Item1-Ends-Here -->

        <!-- Item2-Starts-Here -->
        <div class="item2">
            <div class="close2">
                <!-- Remove-Item --><div class="alert-close2"> </div><!-- //Remove-Item -->

                <div class="title2">
                    <p>Adult</p>
                </div>
                <div class="quantity2">

                        <input type="number" name="numberOfAdultTickets" min="1" max="10" value="1">
                </div>
                <div class="price2">
                    <p>$ ${ticket.getAdultTicketPrice()}</p>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <!-- //Item2-Ends-Here -->

    </div>
    <!-- //Items-Ends-Here -->

    <!-- Total-Price-Starts-Here -->

    <!-- Checkout-Starts-Here -->
</br>
    <div class="checkout">


        <div class="checkout-btn">
            <input type="submit" class="checkout-btn" value="Proceed to checkout">
        </div>
        <div class="clear"></div>
    </div>
    <!-- //Checkout-Ends-Here -->
</form>
</div>
<!-- Content-Ends-Here -->



</body>
<!-- Body-Ends-Here -->

</html>