<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Policy</title>
<link rel="stylesheet" href="<c:url value='/resources/Css/main.css'></c:url>" />
    <link rel="stylesheet" href="https://bootswatch.com/4/lux/bootstrap.css" />
<style type="text/css">

              .policyTable, .policyrTable td {
                     border-collapse: collapse;
                     border: 1px solid #aaa;
                     margin: 2px;
                     padding: 2px 2px 2px 10px;
                     font-size: 12px;
              }
              .PolicyTable th {
                     font-weight: bold;
                     font-size: 12px;
                     background-color: #5C82FF;
                     color: white;
              }
              .policyLabel {
                     font-family: verdana;
                     font-size: 12px;
                     font-weight: bold;
              }
              a, a:AFTER {
                     color: blue;
              }
              .divplacement
              {
              	margin-top: 2%;
              }
             
</style>

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
                <img src="./images/privacy-policy.png" class="fontlg" alt="" />
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto ">
                <li class="nav-item active">
                <a class="nav-link" href="/Policy_management/addl">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                <a class="nav-link" href="/Policy_management/addPolicy">Policies</a>
                </li>
                <li class="nav-item active">
                <a class="nav-link" href="/Policy_management/logout">Logout</a>
                </li>
            	<li class="nav-item active">
                 <a class="nav-link">(<% out.println(session.getAttribute("username")); %>) </a>
                </li>
            </ul>
            </div>
        </div>
    </nav>
  <div class="container divplacement">
<div class="container-fliud" >
	        <div class="card shadow">
            
<div class="shadow-lg p-3 mb-5 bg-white rounded" style="background-color: #ffffff">
<!-- author other -->
	<strong><h2> Enter New Policy</h2></strong>
	<c:url var="action" value="/policy/add"></c:url>
	<form:form method="post" action="${action}" commandName="policy" cssClass="policyForm">
		<table class="table">
			<c:if test="${!empty policy}">
			
					<!--<form:label path="id" cssClass="policyLabel">
						<spring:message code="label.policyId"/>
					</form:label>-->
					
					<form:hidden path="id"/>
				
			</c:if>
		
		<tr>
			<td>
				<form:label path="name" cssClass="policyLabel">
					<spring:message code="label.policyName"/>
				</form:label>
			</td>
			<td>
				<form:input path="name" cssClass="form-control"/><form:errors path="name" cssClass="error"></form:errors>
			</td>
		</tr>
		
		<tr>
			<td>
				<form:label path="type" placeholder="type"  cssClass="policyLabel">
					<spring:message code="label.type" />
				</form:label>
			</td>
			<td>
				<form:input path="type" cssClass="form-control"/>
				<form:errors path="type" cssClass="error"></form:errors>
			</td>
		</tr>
		
		<tr>
			<td>
				<form:label path="years" cssClass="policyLabel">
					<spring:message code="label.years"/>
				</form:label>
			</td>
			<td>
				<form:input path="years" cssClass="form-control"/>
				<form:errors path="years" cssClass="error"></form:errors>
			</td>
		</tr>
		
		<tr>
			<td>
				<form:label path="company" cssClass="policyLabel">
				<spring:message code="label.company"/>
			</form:label>
			</td>
			<td>
				<form:input path="company" cssClass="form-control"/>
				<form:errors path="company" cssClass="error"></form:errors>
			</td>
		</tr>
		
		<tr>
			<td>
				<form:label path="initial_deposit" cssClass="policyLabel">
				<spring:message code="label.initial_deposit"/>
				</form:label>
			</td>
			<td>
				<form:input path="initial_deposit" cssClass="form-control"/>
				<form:errors path="initial_deposit" cssClass="error"></form:errors>
			</td>
		</tr>
		
		<tr>
			<td>
				<form:label path="user_type" cssClass="policyLabel">
					<spring:message code="label.user_type"/>
				</form:label>
			</td>
			<td>
				<form:input path="user_type" cssClass="form-control"/>
				<form:errors path="user_type" cssClass="error"></form:errors>
			</td>
		</tr>
		
		<tr>
			<td>
				<form:label path="term_amount" cssClass="policyLabel">
					<spring:message code="label.term_amount"/>
				</form:label>
			</td>
			<td>
				<form:input path="term_amount" cssClass="form-control"/>
				<form:errors path="term_amount" cssClass="error"></form:errors>
			</td>
		</tr>
		
		<tr>
			<td>
				<form:label path="interest" cssClass="policyLabel">
					<spring:message code="label.interest"/>
				</form:label>
			</td>
			<td>
				<form:input path="interest" cssClass="form-control"/>
				<form:errors path="interest" cssClass="error"></form:errors>
			</td>
		</tr><br>
		
		<tr>
			<td>
				<c:if test="${empty policy.name}">
					<input type="submit" class="btn btn-" value="<spring:message code="label.addpolicy"/>"/>
				</c:if>
				<c:if test="${!empty policy.name}">
					<input type="submit" value="<spring:message code="label.editpolicy"/>"/>
				</c:if>
			
			</td>
		</tr>
	</table>
	</form:form>
</div>
</div>
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