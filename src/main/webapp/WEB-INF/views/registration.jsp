<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<html>
<head>
    <title>Registration</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>
<Style>
    .navbar-inverse {
        background-color: #242;
        border-color: #082308;
        font-style:italic;
    }
</Style>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/">MovieTicketBooking</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="/">Home</a></li>

            <li><a href="#">Page 1</a></li>
        </ul>


        <ul class="nav navbar-nav navbar-right">
            <li><a href="/registartion"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
            <li><a href="/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </ul>
    </div>
</nav>
<form:form class="form-middle" action="/registration" method="post" modelAttribute="customer">
    <div class="form-group">
        <label class="control-label col-sm-2" for="firstName">First Name:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Enter first name">
            <form:errors path="firstName"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="lastName">Last Name:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Enter last name">
        </div>
    </div>


    <div class="form-group">
        <label class="control-label col-sm-2" for="email">Email:</label>
        <div class="col-sm-10">
            <input type="email" class="form-control" id="email" name="email" placeholder="Enter email">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="userName">Username:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="userName" name="userName" placeholder="Choose a user name">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="password">Password:</label>
        <div class="col-sm-10">
            <input type="password" class="form-control" id="password" name="password" placeholder="Choose a password">
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">Submit</button>
        </div>
    </div>
</form:form>


</body>
</html>