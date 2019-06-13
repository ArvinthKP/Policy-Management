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
                        <a class="nav-link" href="/Policy_management/registerroute">Register</a>
                    </li>
                </ul>

            </div>
    </div>
  </nav>

  <!-- Navbar Ends -->

  <!-- Main  -->
  <main>

    <div class="container">
      <div class="row d-flex flex-column align-items-center">
        <div class="col-lg-5 text-center mt-5">
          <div class="p-4">
            <h5 class="font">Policy Tracking</h5>
          </div>
        </div>
        <div class="col-lg-7 mt-5 ">
          <div class="card shadow">
            <div class="card-body p-5 cardbg text-center">
              <div class="card-title ">
                <h4 class="loghov py-2 text-secondary fontfam">Login</h4>
              </div>
              <div class="container ">
                <form action="/Policy_management/login" method="post">
                  <div class="form-group text-center">
                    <input type="text" class="form-control mx-auto" name="vendorId" placeholder="<spring:message code="label.vendoruserid"></spring:message> " value="" />
                  </div>
                  <div class="form-group text-center">
                    <input type="password" class="form-control mx-auto" name="vendorPassword"placeholder="<spring:message code="label.vendorpassword" />" value="" />
                  </div>
                  <div class="form-group text-center mt-5">
                      <button type="submit" class="btn  btn-sm px-5 button">
                      Login
                    </button>
                  </div>
                  <c:if test="${invalidAttempt == 'true' }">
                    <div class="form-group invalid">
                      *invalid attempt please check your credentials
                    </div>
                  </c:if>
                  <div class="form-group invalid">
                    ${String}
                  </div>
							<hr>
								<a href="/Policy_management/registerroute" class="m-1"><h6>New User ? Register</h6> </a>
                </form>
           
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>




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