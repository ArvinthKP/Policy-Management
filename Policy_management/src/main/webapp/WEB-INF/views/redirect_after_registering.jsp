<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
	function showDetails(userId){
	
	alert("please note you your userID "+userId);
	window.location.href = "/Policy_management/index";
}

</script>
</head>
<body onload="showDetails(${userId})">

</body>
</html>