<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry! something went wrong</title>
        
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
        <div class="container text-center">
            <img src="images/warning.png" width="180" height="180" class="img-fluid" alt="error image"/>      
            <h3 class="display-md-3">Sorry! Something went wrong</h3>
            <%= exception  %>
            <a href="index.jsp" class="btn primary-background btn-lg text-white mt-3">Home</a>
        </div>        
    </body>
</html>
