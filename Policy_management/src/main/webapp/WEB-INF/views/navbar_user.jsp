<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
        <div class="container">
            <a class="navbar-brand" href="#">Policy Tracking</a>
            <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
        
            <div class="navbar-collapse collapse text-center" id="navbarColor02" >
            <ul class="navbar-nav ml-auto ">
                <li class="nav-item active">
                <a class="nav-link" href="/Policy_management/addl">Home <span class="sr-only">(current)</span></a>
                </li>
                            <li class="nav-item">
              <!-- <a class="nav-link" href="#">Search</a> -->
              <!-- Search Model Button -->
              <button  type="button" class="btn nav-link " data-toggle="modal" data-target="#searchModel">  Search  </button>
              </li>
                <li class="nav-item">
                <a class="nav-link" href="/Policy_management/logout">Logout</a>
                </li>
            	<li class="nav-item">
                 <a class="nav-link">(<% out.println(session.getAttribute("username")); %>) </a>
                </li>
            </ul>
            
            </div>
     </div>
      </nav>
</body>
</html>