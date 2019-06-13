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
<body style="background-color: #dfe6e9">
<jsp:include page="navbar.jsp"></jsp:include>
<div class="container divplacement">
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
					<input type="submit" class="btn btn-dark" value="<spring:message code="label.addpolicy"/>"/>
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
</body>
</html>