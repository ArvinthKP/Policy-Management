<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</script>
<style type="text/css">
.container-fluid
{
	width:auto;
}
.thead-dark
{
	color: blue;
}
</style>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Add Policy</title>
      <!--  <link rel="stylesheet" href="./Css/policy.css" /> -->  
  <link rel="stylesheet" href="<c:url value='/resources/Css/main.css'></c:url>" />
    <link rel="stylesheet" href="https://bootswatch.com/4/lux/bootstrap.css" />
</head>
<body>
<div id="particles-js" class="zindex"></div>
		<!-- Navbar  -->
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="./images/privacy-policy.png" class="fontlg" alt="" />
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
            <li class="nav-item active">
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
    
<!-- Searched List Display starts -->

		    <div class="container-fluid">
        <div class="card shadow">
            <div class="card-body ">
                <div class="table-responsive">
                <c:if test="${!empty searchList}">
				<br>
				<h1>List of policies</h1><br>
                    <table class="table table-hover ">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Name</th>
								<th scope="col">Type</th>
								<th scope="col">Years</th>
								<th scope="col">Company</th>
								<th scope="col">Initial deposit</th>
								<th scope="col">User type</th>
								<th scope="col">Term amount </th>
								<th scope="col">Interest</th>
								<th scope="col">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                         <%int i=1;%>
                                    <c:forEach items="${searchList}" var="search">
                            <tr>
                                <th scope="row"><%=i %></th>
                                <td>${search.id}</td>
								<td>${search.name}</td>
								<td>${search.type}</td>
								<td>${search.years}</td>	
								<td>${search.company}</td>
								<td>${search.initial_deposit}</td>
								<td>${search.user_type}</td>
								<td>${search.term_amount}</td>
								<td>${search.interest}</td>
							    <td>							
							        <a href="<c:url value='/paymentInit/${search.id}'/>">
								    <button class="btn btn-primary btn-block ">Buy Policy</button>
							        </a>
						        </td>
                            </tr>
                               <%i++; %>
                                     </c:forEach>

                        </tbody>
                    </table>
                    </c:if>
                </div>
            </div>
            <c:if test="${empty searchList}">
		<center>	<h1>Please Enter Valid Search Input Fields</h1></center>
			</c:if>
        </div>
    </div>
<!-- Search List Display Ends-->
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