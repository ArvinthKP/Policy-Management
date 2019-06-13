<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib  uri="http://www.springframework.org/tags" prefix="spring"  %>
    <%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Policy Tracking</title>
    <link rel="stylesheet" href="https://bootswatch.com/4/lux/bootstrap.css" />
	<link rel="stylesheet" href="<c:url value='/resources/Css/main.css'></c:url>" />
	<script>  
	history.pushState(null, null, location.href);
    window.onpopstate = function () {
        history.go(1);
    }; 
    </script>
</head>

<body>
    <!-- <ion-icon name="analytics" size="large" class="fontlg"></ion-icon> -->
    <!-- Navbar  -->
    <div id="particles-js" class="zindex"></div>
      <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="<c:url value='/images/privacy-policy.png'></c:url>" class="fontlg" alt="" />
            </a>
            <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarColor02"
                aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="navbar-collapse collapse text-center" id="navbarColor02">
                <ul class="navbar-nav ml-auto ">
                    <li class="nav-item active">
                        <a class="nav-link" href="/Policy_management/index">Login</a>
                    </li>
                </ul>

            </div>
        </div>
    </nav>

    <!-- Navbar Ends -->
    <div class="container text-center ">

        <div class="card shadow mt-5">
            <div class="card-body mt-5">
                <div class="card-title">
                    <h4 class="loghov py-2 mb-4 text-secondary fontfam">Register</h4>
                </div>
                <div class="d-flex justify-content-around align-items-center main flex-md-row flex-column">
                    <div class="left">

                        <a href="vendor/AddAdmin" class="btn  button px-5 m-1">Admin</a>
                    </div>
                    <div class="right">
                        <a href="user/AddUser" class="btn  button px-5 m-1">User</a>
                    </div>


                </div>
            </div>
        </div>

    </div>






    <!-- Main Ends -->


  <!-- Bootstrap Scripts -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous"></script>
  <!-- ================= -->

  <script src="<c:url value='/resources/Js/particle.js'></c:url>"></script>
  <script type="text/Javascript">

          particlesJS.load('particles-js', '<c:url value='/resources/Assets/particles.json'></c:url>', function() {
        console.log('callback - particles.js config loaded');
      });
    </script>
</body>

</html>