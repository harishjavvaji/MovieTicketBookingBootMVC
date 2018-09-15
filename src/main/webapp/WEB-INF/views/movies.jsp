
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Movies</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
    body {
        margin: 40px;
    }

    .box {
        background-color: #444;
        color: #fff;
        border-radius: 5px;
        padding: 20px;
        font-size: 150%;
    }

    .box:nth-child(even) {
        background-color: #ccc;
        color: #000;
    }

    .wrapper {
        width: 600px;
        display: grid;
        grid-gap: 10px;
        grid-template-columns: repeat(6, 100px);
        grid-template-rows: 100px 100px 100px;
        grid-auto-flow: column;
    }
    .center {
        display: block;
        margin-left: auto;
        margin-right: auto;
        width: 50%;
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

    /* Change the link color to #111 (black) on hover */
    li a:hover {
        background-color:#567 ;
    }
</Style>
<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/">Home</a>
        </div>

        <ul class="nav navbar-nav">
            <li class="active"><a href="/movies">Movies</a></li>

            <li><a href="/login">Login</a></li>
            <li><a href="/registration">SignUp</a> </li>

        </ul>




<ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> ${login.userName} </li>
        </ul>
    </div>
</nav>

<img src="Avengers_Infinity_War_poster_002.jpg" name="Avengers">



        <%--<div class="wrapper">--%>
            <%--&lt;%&ndash;<img src=https://images-na.ssl-images-amazon.com/images/I/A1t8xCe9jwL._SY679_.jpg>${moviesList.get(0)}&ndash;%&gt;--%>
        <%--</div>--%>
<%--<div class="wrapper">--%>
    <%--<img src=https://m.media-amazon.com/images/M/MV5BMTg1MTY2MjYzNV5BMl5BanBnXkFtZTgwMTc4NTMwNDI@._V1_.jpg>${moviesList.get(1)}--%>
<%--</div>--%>
</body>
</html>