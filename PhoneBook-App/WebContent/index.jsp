<%@page import="com.conn.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index Page</title>

<%@ include file="component/allCss.jsp" %>

<style type="text/css">
	.back-img{
		background: url("img/phoneimg.jpg");
		width:100%;
		height: 80vh;
		background-repeat: no-repeat;
		background-size: cover;
	}

</style>

</head>
<body>
<!-- Navbar Begin -->
<%@ include file="component/navbar.jsp" %>
<!-- Navbar end -->



	 <div class="container-fluid back-img text-center text-success ">
	 	 <h1 class="mt-3">Welcome to PhoneBook App</h1>
	 	
	 </div>



<%@ include file="component/footer.jsp" %>
</body>
</html>