
<%@page import="com.iangkur.entities.User"%>
<%@page errorPage="error_page.jsp"%>
<%
    User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("login_page.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>

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

        <!--profile navbar-->
        <%@include file="profilenavbar.jsp" %>
        <ul class="navbar-nav mr-right">
            <li class="nav-item">
                <a class="nav-link" href="profile_page.jsp"><span class="fa fa-user-circle"></span> <%= user.getUsername()%></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="LogoutServlet"><span class="fa fa-sign-out"></span> Logout</a>
            </li>
        </ul>
    </div>
</nav>


<!--javascript-->
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
