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
<script type="text/javascript">
function deletePolicy(policyId) {
	if(confirm('do you want to delete this policy?'))
		{
		var url='delete/'+policyId;
		window.location.href=url;
		}
}

  
history.pushState(null, null, location.href);
window.onpopstate = function () {
    history.go(1);
}; 

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
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>

	<div class="container-fliud" >
	<center>
		<c:if test="${!empty policyList}">
		<br>
			<h1>List of policies</h1><br>
			<table class="table table-bordered">
				 <thead class="thead-dark">
				<tr>
					<th width="">Id</th>
					<th width="">Name</th>
					<th width="">Type</th>
					<th width="">Years</th>
					<th width="">Company</th>
					<th width="">Initial deposit</th>
					<th width="">User type</th>
					<th width="">Term amount </th>
					<th width="">Interest</th>
					<th width="">Actions</th>
				</tr>
				</thead>
				<c:forEach items="${policyList}" var="policy">
					<tr>
						<td>${policy.id}</td>
						<td>${policy.name}</td>
						<td>${policy.type}</td>
						<td>${policy.years}</td>	
						<td>${policy.company}</td>
						<td>${policy.initial_deposit}</td>
						<td>${policy.user_type}</td>
						<td>${policy.term_amount}</td>
						<td>${policy.interest}</td>
						<td>
							<img src="<c:url value='/images/delete.png'/>" title="delete policy" onclick="javascript:deletePolicy(${policy.id})"/>
							<a href="<c:url value='/edit/${policy.id}'/>">
								<img src="<c:url value='/images/edit.png'/>" title="edit policy" />
							</a>
						</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</center>
	</div>

</body>
</html>