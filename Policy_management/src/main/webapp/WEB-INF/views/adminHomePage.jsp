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
<link rel="stylesheet" href="<c:url value='/resources/Css/main.css'></c:url>" />
    <link rel="stylesheet" href="https://bootswatch.com/4/lux/bootstrap.css" />
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
	<!--<jsp:include page="navbar.jsp"></jsp:include>-->
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

    <!-- Navbar Ends -->

	<div class="container-fliud" >
	        <div class="card shadow">
            <div class="card-body ">
                <div class="table-responsive">
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
	</div></div></div>
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