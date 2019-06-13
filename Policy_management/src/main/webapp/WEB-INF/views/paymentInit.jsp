<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Receipt</title>
 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="<c:url value='/resources/Css/main.css'></c:url>" />
    <link rel="stylesheet" href="https://bootswatch.com/4/lux/bootstrap.css" />
    <script>  
	history.pushState(null, null, location.href);
    window.onpopstate = function () {
        history.go(1);
    }; 
    </script>
</head>
<body >
	<div id="particles-js" class="zindex"></div>
	<!-- Navbar  -->
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="<c:url value='/images/privacy-policy.png'></c:url>" class="fontlg" alt="" />
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto text-center">
                <li class="nav-item active">
              <a class="nav-link" href="/Policy_management/home"
                >Home <span class="sr-only">(current)</span></a
              >
            </li>
                      
                    <li class="nav-item active">
                        <a class="nav-link" href="/Policy_management/logout">Logout<span class="sr-only">(current)</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Navbar Ends -->
	
	
<div class="container shadow-lg p-3 mb-5 bg-white rounded" style="margin-top: 2%">
<center>
    <div class="row">
        <div class="well  col-md-12 ">
            <div class="row">
                <div class="text-left col-md-6">
                    <address>
                        <strong>${userDetails.firstName} ${userDetails.lastName}</strong>
                        <br>
                        ${userDetails.email}
                        <br>
                        Phone: ${userDetails.contactNo}
                    </address>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                    <p>
                        <em>Date:
                        <% 
                        Date dNow = new Date( );
                        SimpleDateFormat ft = new SimpleDateFormat ("yyyy.MM.dd");
                        out.print(   ft.format(dNow) );
                        %></em>
                    </p>
                    
                </div>
            </div>
            <div class="row">
                <div class="text-center">
                    <h1>Receipt</h1>
                </div>
                </span>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Years</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="col-md-9"><em>${policy.name}</em></td>
                            <td class="col-md-1" style="text-align: center"> ${policy.years} </td>
                            <td class="col-md-1 text-center">${policy.years}</td>
                            <td class="col-md-1 text-center">${policy.term_amount}</td>
                        </tr>
                        <tr>
                            <td>   </td>
                            <td>   </td>
                            <td class="text-right">
                            <p>
                                <strong>Subtotal: </strong>
                            </p>
                            <p>
                                <strong>Tax: </strong>
                            </p></td>
                            <td class="text-center">
                            <p>
                                <strong>${policy.term_amount}</strong>
                            </p>
                            <p>
                            
                                <strong>${ (policy.term_amount) + ((policy.term_amount/100)*2) }</strong>
                            </p></td>
                        </tr>
                        <tr>
                            <td>   </td>
                            <td>   </td>
                            <td class="text-right"><h4><strong>Total: </strong></h4></td>
                            <td class="text-center text-danger"><h4><strong>${ (policy.term_amount) + ((policy.term_amount/100)*2) }</strong></h4></td>
                        </tr>
                    </tbody>
                </table>
               
                <form action="/Policy_management/paymentgate" method="post">
                <button type="submit" class="btn btn-success btn-lg btn-block">
                    Pay Now   <span class="glyphicon glyphicon-chevron-right"></span>
                </button>
               </form>
            </div>
        </div>
    </center>
    </div>
	
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