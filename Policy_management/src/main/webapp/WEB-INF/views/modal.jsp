<%@page import="com.pack.form.Policy"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Policy Tracking</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
<link rel="stylesheet" href="<c:url value='/resources/Css/main.css'></c:url>" />
    <link rel="stylesheet" href="https://bootswatch.com/4/lux/bootstrap.css" />
<script>

  
history.pushState(null, null, location.href);
window.onpopstate = function () {
    history.go(1);
}; 

	
	

    $(document).ready(function(){
        $('#bd-example-modal-sm').modal('show');
    });



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
              <a class="nav-link" href="/Policy_management/dashboard"
                >Dashboard <span class="sr-only">(current)</span></a
              >
            </li>
            <li class="nav-item active ">
              <a class="nav-link" href="#" data-toggle="modal"
                data-target="#searchModel">Search<span class="sr-only">(current)</span></a>
              <!-- Search Model Button -->       
             

            </li>           
                    <li class="nav-item active">
                        <a class="nav-link" href="/Policy_management/logout">Logout<span class="sr-only">(current)</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Navbar Ends -->
    


	
	<main>
        <div class="container mt-5 text-center">
            <!-- <div class="container text-center"> -->
            <div class="row ">
                <div class="col-lg-6 p-3">
                    <div class="card shadow ">
                        <div class="card-body">
                            <div class="card-title">
                                <h5 class="loghov pb-2 mb-2">About</h5>
                                <div>
                                    <img src="<c:url value='/images/boss.png'></c:url>" class="circle my-2" alt="">
                                </div>
                                <h5 class="py-1 mt-3">${user.userId }</h5>
                                <h5 class="py-1 mt-3">${user.firstName }</h5>
                                <h5 class="py-1 mt-3">User</h5>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 p-3">
                    <div class="card shadow">
                        <div class="card-body">
                            <div class="card-title">
                                <h5 class="loghov pb-2 mb-2">Your Policies</h5>
                                <table class="table table-borderless">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Policy Id</th>
                                            <th scope="col">Policy Name</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%int i=1;%>
                                    <c:forEach items="${policyList}" var="policy">
                                    
                                        <tr>
                                            <th scope="row"><%=i %></th>
                                            <td><!-- <a href="/Policy_management/policydetail?pad=${policy.id }" data-toggle="modal"
                                                    data-target=".bd-example-modal-sm"> </a>-->${policy.id}</td>
                                                    
                                            <td>${policy.name}</td>    
                                            <td><a href="/Policy_management/policydetail/${policy.id}"  > More Info</a></td>         
											
                                        </tr>
                                        <%i++; %>
                                     </c:forEach>                                    

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- </div> -->

            <div class="modal fade bd-example-modal-sm " id="bd-example-modal-sm" tabindex="-1" role="dialog"
                aria-labelledby="mySmallModalLabel" aria-hidden="true">
                <div class="modal-dialog  modal-dialog-centered modal-lg">
                    <div class="modal-content shadow">
                        <div class="p-4 ">

					
                            <h4 class="text-center font  my-2">Policy Info</h4>
                            <h5 class="p-2">Id ${policyDetail.id }</h5>
                            <h5 class="p-2">Policy Name ${policyDetail.name }</h5>
                            <h5 class="p-2">Year ${policyDetail.years }</h5>
                            <h5 class="p-2">Company Name ${policyDetail.company }</h5>
                            <h5 class="p-2">Term Amount ${policyDetail.term_amount }</h5>
                            <h5 class="p-2">Initial Deposit ${policyDetail.initial_deposit }</h5>
                            <h5 class="p-2">Interest ${policyDetail.interest }</h5>
                           

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">Close</button>

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </main>
	
  <!--  Search Modal -->
    <div
      class="modal fade"
      id="searchModel"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalCenterTitle"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle">Search</h5>
            <button
              type="button"
              class="close"
              data-dismiss="modal"
              aria-label="Close"
            >
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          
          <div class="modal-body">
            <!-- TEmp -->
		<c:url var="action" value="/search"></c:url>
          <form:form
              method="post"
              action="${action}"
              commandName="search"
              cssClass="customerForm"
            >
            
              <table>
               
                  <tr>
                    <td>
                      <form:label path="policyId" cssClass="customerLabel">
                        <spring:message code="label.policyId" />
                      </form:label>
                    </td>
                    <td>
                      <form:input path="policyId" size="8" />
                      <form:hidden path="policyId" />
                    </td>
                  </tr>
              
                <tr>
                  <td>
                    <form:label path="policyName" cssClass="customerLabel">
                      <spring:message code="label.policyName" />
                    </form:label>
                  </td>
                  <td>
                    <form:input path="policyName" />
                  </td>
                </tr>

                <tr>
                  <td>
                    <form:label path="policyType" cssClass="customerLabel">
                      <spring:message code="label.policyType" />
                    </form:label>
                  </td>
                  <td>
                    <form:input path="policyType" />
                  </td>
                </tr>

                <tr>
                  <td>
                    <form:label path="companyName" cssClass="customerLabel">
                      <spring:message code="label.companyName" />
                    </form:label>
                  </td>
                  <td>
                    <form:input path="companyName" />
                  </td>
                </tr>

                <tr>
                  <td>
                    <form:label path="numOfYears" cssClass="customerLabel">
                      <spring:message code="label.numOfYears" />
                    </form:label>
                  </td>
                  <td>
                    <form:input path="numOfYears" />
                  </td>
                </tr>
              </table>
            
            <!-- Temp -->
          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-dismiss="modal"
            >
              Close
            </button>

            <button type="submit" class="btn btn-primary">Search</button>            
          </div>
          </form:form>
        </div>
      </div>
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