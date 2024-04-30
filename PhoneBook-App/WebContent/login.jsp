<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<%@ include file="component/allCss.jsp" %>
</head>
<body style="background-color: #f7faf8;">

<!-- Navbar Begin -->
<%@ include file="component/navbar.jsp" %>
<!-- Navbar end -->

<!-- login form -->
	<div class="container-fluid">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						 <h4 class="text-center text-success">Login Page</h4>
						 			 
			 
						 <%
						 String invalidMsg = (String)session.getAttribute("invalidMsg");
						 if(invalidMsg!=null){
						 %>	 
							 <p class="text-danger text-center"><%=invalidMsg%></p>
						 <%}
						 	session.removeAttribute("invalidMsg");
						 %>
						 
						 <%
						 String logMsg = (String)session.getAttribute("logMsg");
						 if(logMsg!=null){
						 %>	 
							 <p class="text-success text-center"><%=logMsg%></p>
						 <%}
						 	session.removeAttribute("logMsg");
						 %>
						 
						<form action="login" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="email">
								
							</div>
							
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1" name="password">
							</div>
							
							<div class="text-center mt-2">
								<button type="submit" class="btn btn-primary">Login</button>
							</div>
							
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- login form style="margin-top: 180px"-->

<div  style="margin-top: 226px">
<%@ include file="component/footer.jsp" %>
</div>
</body>
</html>