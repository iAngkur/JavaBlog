<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>

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

        <main class="primary-background banner-background" style="padding-bottom: 100px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-md-3">

                        <div class="card">
                            <div class="card-header primary-background text-white text-center">
                                <span class="fa fa-user-plus fa-3x"></span>
                                <br>
                                <p style="font-size: 25px;">Register Here</p>
                            </div>
                            <div class="card-body">
                                <form action="RegisterServlet" method="POST" id="reg-form">
                                    <div class="form-group">
                                        <label for="username">User Name</label>
                                        <input type="text" name="username" class="form-control" id="username" placeholder="Enter username">                                        
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Password</label>
                                        <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputGender">Select Gender: </label>                                       
                                        <label class="radio-inline"><input type="radio" name="gender" value="male" checked="true"> Male</label>
                                        <label class="radio-inline"><input type="radio" name="gender" value="female"> Female</label>                                 
                                    </div>

                                    <div class="form-group">
                                        <textarea name="about" class="form-control" id="" rows="5" placeholder="Tell something about yourself..."></textarea>
                                    </div>

                                    <div class="form-check">
                                        <input type="checkbox" name="check" class="form-check-input" id="exampleCheck1">
                                        <label class="form-check-label" for="exampleCheck1"> Agree terms & conditions</label>
                                    </div>
                                    <br>
                                    <div class="container text-center" id="loader" style="display: none;">
                                        <span class="fa fa-refresh fa-spin fa-3x"></span>
                                        <h4>Please Wait...</h4>
                                    </div>
                                    <br>
                                    <button id="submit-btn" type="submit" class="btn btn-primary">Register</button>
                                </form>
                            </div>                            
                        </div>

                    </div>
                </div>                    
            </div>
        </main>


        <!--javascript-->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="js/registerjs.js" type="text/javascript"></script>       

    </body>
</html>
