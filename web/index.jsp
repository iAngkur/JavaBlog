<%@page import="com.iangkur.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>


        <style>
            .banner-background{
                clip-path: polygon(33% 0, 74% 0, 100% 0, 100% 97%, 61% 89%, 26% 96%, 0 88%, 0 0);
            }
        </style>


    </head>
    <body>
        <!--navbar-->
        <%@include file="navbar.jsp" %>


        <!--banner-->
        <div class="container-fluid p-0 m-0">
            <div class="jumbotron primary-background text-white banner-background">
                <div class="container">
                    <h3 class="display-md-4">Welcome to Java Blog</h3>                    
                    <p>World of Java Programming</p>

                    <a class="btn btn-outline-light btn-lg"><span class="fa fa-user-plus"></span> Join, it's Free!</a>
                    <a href="login_page.jsp" class="btn btn-outline-light btn-lg ml-2"><span class="fa fa-user-circle fa-spin"></span> Login</a>
                </div>                
            </div>                             
        </div>

        
        
        <!--card-->
        <div class="container">
            <div class="row mb-3">
                <div class="col-md-4">
                    <div class="card">                       
                        <div class="card-body">
                            <h5 class="card-title">Java Programming Language</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read More...</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">                       
                        <div class="card-body">
                            <h5 class="card-title">Java Programming Language</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read More...</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">                       
                        <div class="card-body">
                            <h5 class="card-title">Java Programming Language</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read More...</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="card">                       
                        <div class="card-body">
                            <h5 class="card-title">Java Programming Language</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read More...</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">                       
                        <div class="card-body">
                            <h5 class="card-title">Java Programming Language</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read More...</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">                       
                        <div class="card-body">
                            <h5 class="card-title">Java Programming Language</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read More...</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--javascript-->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
    </body>
</html>
