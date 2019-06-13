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

    <!-- Main  -->
    <main>
        <div class="container">
            <div class="row ">
                <div class="col-lg-7 mt-2 mx-auto">
                    <div class="card shadow">
                        <div class="card-body p-3 cardbg text-center">
                            <div class="card-title ">
                                <h4 class="loghov py-1 text-secondary fontfam">Sign up</h4>
                            </div>

                            <div class="container">
                                <form:form commandName="vendor" action="/Policy_management/vendor/addAdminForm"
                                    method="post">


                                    <form:hidden path="vendorId" />

                                    <div class="form-group p-1">

                                        <form:input path="firstName" cssClass="form-control mx-auto"
                                            placeholder="First Name" />
                                        <form:errors path="firstName" cssClass="error">
                                        </form:errors>
                                    </div>
                                    <div class="form-group p-1">

                                        <form:input path="lastName" cssClass="form-control mx-auto"
                                            placeholder="Last Name" />
                                        <form:errors path="lastName" cssClass="error">
                                        </form:errors>
                                    </div>
                                    <div class="form-group p-1">

                                        <form:input path="age" cssClass="form-control mx-auto" placeholder="Age" />
                                        <form:errors path="age" cssClass="error">
                                        </form:errors>
                                    </div>
                                    <div class="form-group p-1">

                                        <form:input path="gender" cssClass="form-control mx-auto"
                                            placeholder="Gender" />
                                        <form:errors path="gender" cssClass="error">
                                        </form:errors>
                                    </div>
                                    <div class="form-group p-1">
                                        <form:input path="contactNo" cssClass="form-control mx-auto"
                                            placeholder="Contact No" />
                                        <form:errors path="contactNo" cssClass="error">
                                        </form:errors>
                                    </div>
                                    <div class="form-group p-1">

                                        <form:input path="password" cssClass="form-control mx-auto"
                                            placeholder="Password" />
                                        <form:errors path="password" cssClass="error">
                                        </form:errors>
                                    </div>
                                    <div class="form-group p-1">

                                        <form:input path="email" cssClass="form-control mx-auto" placeholder="Email" />
                                        <form:errors path="email" cssClass="error">
                                        </form:errors>
                                    </div>

                                  
                                       <div class="d-flex justify-content-around align-items-center  flex-md-row flex-column m-2">
                                         <button type="reset" class="btn btn-sm px-5 m-1 button">Reset</button>
                                           <button type="submit" class="btn btn-sm px-5 m-1 button">Register</button>
                                            </div>
                                        </div>
                                 
                                </form:form>
                                <hr>
                                <a href="/Policy_management/user/AddUser" class="m-1  pb-1"><h6>Register as User?</h6> </a>
		


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