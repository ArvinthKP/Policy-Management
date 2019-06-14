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
    <style>
    .error{
	color:red !important; 
}</style>
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
                <div class="col-lg-7 mt-1 mx-auto">
                    <div class="card shadow">
                        <div class="card-body p-1 cardbg text-center">
                            <div class="card-title ">
                                <h4 class="loghov pb-1 text-secondary fontfam">Sign up</h4>
                            </div>

                            <div class="container">

                                <form:form class="b1  p-3 mb-2 bg-white rounded " commandName="user"
                                    action="/Policy_management/user/addUserForm" method="post">
                                    <div class="container cusgrid">
                                        <div class="row">
                                            <form:hidden path="userId" />

                                            <div class="form-group col-md-6 ">

                                                <form:input placeholder="First Name" path="firstName"
                                                    cssClass="form-control mx-auto" />
                                                <form:errors path="firstName" cssClass="error">
                                                </form:errors>
                                            </div>
                                            <div class="form-group col-md-6">

                                                <form:input placeholder="Last Name" path="lastName"
                                                    cssClass="form-control mx-auto" />
                                                <form:errors path="lastName" cssClass="error">
                                                </form:errors>
                                            </div>
                                            <div class="form-group col-md-6">

                                                <form:input placeholder="Age" path="age"
                                                    cssClass="form-control mx-auto" />
                                                <form:errors path="age" cssClass="error">
                                                </form:errors>
                                            </div>
                                            <div class="form-group col-md-6">

                                                <form:input placeholder="Gender" path="gender"
                                                    cssClass="form-control mx-auto" />
                                                <form:errors path="gender" cssClass="error">
                                                </form:errors>
                                            </div>
                                            <div class="form-group col-md-6">

                                                <form:input placeholder="Contact No" path="contactNo"
                                                    cssClass="form-control mx-auto" />
                                                <form:errors path="contactNo" cssClass="error">
                                                </form:errors>
                                            </div>
                                            <div class="form-group col-md-6">

                                                <form:password placeholder="Password" path="password"
                                                    cssClass="form-control mx-auto" />
                                                <form:errors path="password" cssClass="error">
                                                </form:errors>
                                            </div>
                                            <div class="form-group col-md-6">

                                                <form:input placeholder="Email" path="email"
                                                    cssClass="form-control mx-auto" />
                                                <form:errors path="email" cssClass="error">
                                                </form:errors>
                                            </div>

                                            <div class="form-group col-md-6">

                                                <form:input placeholder="Date of Birth" path="dob"
                                                    cssClass="form-control mx-auto" />
                                                <form:errors path="dob" cssClass="error">
                                                </form:errors>
                                            </div>

                                            <div class="form-group col-md-6">

                                                <form:input placeholder="Address" path="address"
                                                    cssClass="form-control mx-auto" />
                                                <form:errors path="address" cssClass="error">
                                                </form:errors>
                                            </div>

                                            <div class="form-group col-md-6">

                                                <form:input placeholder="Qualification" path="qualification"
                                                    cssClass="form-control mx-auto" />
                                                <form:errors path="qualification" cssClass="error">
                                                </form:errors>
                                            </div>

                                            <div class="form-group col-md-6">

                                                <form:input placeholder="Salary Per Month" path="salaryPerMonth"
                                                    cssClass="form-control mx-auto" />
                                                <form:errors path="salaryPerMonth" cssClass="error">
                                                </form:errors>
                                            </div>

                                            <div class="form-group col-md-6">

                                                <form:input placeholder="PAN No" path="panNo"
                                                    cssClass="form-control mx-auto" />
                                                <form:errors path="panNo" cssClass="error">
                                                </form:errors>
                                            </div>

                                            <div class="form-group col-md-6">

                                                <form:input placeholder="Employer Type" path="employerType"
                                                    cssClass="form-control mx-auto" />
                                                <form:errors path="employerType" cssClass="error">
                                                </form:errors>
                                            </div>

                                            <div class="form-group col-md-6">

                                                <form:input placeholder="Employer" path="employer"
                                                    cssClass="form-control mx-auto" />
                                                <form:errors path="employer" cssClass="error">
                                                </form:errors>
                                            </div>

                                            <div class="form-group col-md-6">

                                                <form:input placeholder="Hint Question" path="hintQuestion"
                                                    cssClass="form-control mx-auto" />
                                                <form:errors path="hintQuestion" cssClass="error">
                                                </form:errors>
                                            </div>

                                            <div class="form-group col-md-6">

                                                <form:input placeholder="Hint Answer" path="hintAnswer"
                                                    cssClass="form-control mx-auto" />
                                                <form:errors path="hintAnswer" cssClass="error">
                                                </form:errors>
                                            </div>
                                        </div>
                                        <div
                                            class="d-flex justify-content-around align-items-center  flex-md-row flex-column m-2">
                                            <a href="/Policy_management/user/AddUser"><button type="button" class="btn btn-sm px-5 m-1 button order-2 order-md-1">Reset</button></a>
                                            <button type="submit" class="btn btn-sm px-5 m-1 button order-1 order-md-2">Register</button>
                                        </div>
                                    </div>
                                </form:form>
								<hr>
								<a href="/Policy_management/vendor/AddAdmin" class="m-1  pb-1"><h6>Register as Admin?</h6> </a>


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