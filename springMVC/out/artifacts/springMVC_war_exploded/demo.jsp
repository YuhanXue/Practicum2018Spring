<%--
  Created by IntelliJ IDEA.
  User: chengli
  Date: 2017/11/7
  Time: 19:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.io.*"
         contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <script type="text/javascript">

        function checkpwd() {
            var Password = document.getElementById("regpwd").value;
            var ConfirmPassword = document.getElementById("Confirmregpwd").value;

            if(Password==ConfirmPassword) {
                alert("Yours passwords do not match");
            }
            else {

                alert("Your Registration was successfull");
            }
        }

    </script>
    <style type="text/css">
        body {
            background-image: url("http://drexel.edu/~/media/Images/medicine/backgrounds/backgroundBlueLine.ashx");
        }
    </style>
</head>
<body style = "padding-top:60px">

<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Register Form</h3>
                </div>
                <div class="panel-body">
                    <form  name="registerForm">
                        <fieldset>
                            <div class="form-group">
                                <input class="form-control" placeholder="Username" id="regname" name="regname" type="text" />
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="Password" id="regpwd" name="regpwd" type="password" />
                            </div>

                            <div class="form-group">
                                <input class="form-control" placeholder="Confirmed Password" id="Confirmregpwd" name="Confirmregpwd" type="password" />
                            </div>

                            <div class="form-group">
                                <input class="form-control" placeholder="First Name" id="Fname" name="Fname" type="text" />
                            </div>

                            <div class="form-group">
                                <input class="form-control" placeholder="Last Name" id="Lname" name="Lname" type="text" />
                            </div>

                            <input class="btn btn-lg btn-primary btn-block" type="submit" value="register" id="submit" onclick="checkpwd()" />
                        </fieldset>

                    </form>
                </div>
            </div>

        </div>
    </div>
</div>

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

<script  src="js/index.js"></script>

</body>
</html>
maxcdn.bootstrapcdn.com
/*! * Bootstrap v3.3.7 (http://getbootstrap.com) * Copyright 2011-2016 Twitter, Inc. * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE) *//*! normalize.css v3.0.3 | MIT License | github.com/necolas/normalize.css */html{font-family:sans-serif;-webkit-text-size-adjust:100%;-m...
maxcdn.bootstrapcdn.com
Seen by Mada Al-mansour at 7:31pm

