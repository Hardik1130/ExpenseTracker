<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Page</title>
<%@ include file="component/allCss.jsp"%>
</head>
<body style="background-color: #f7faf8;">

	<!-- Navbar Begin -->
	<%@ include file="component/navbar.jsp"%>
	<!-- Navbar end -->

	<!-- register form -->
	<div class="container-fluid">
		<div class="row p-5">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<form action="register" method="post">
							<h4 class="text-center text-success">Registration Page</h4>

							<%
								String succMsg = (String) session.getAttribute("succMsg");
								String errorMsg = (String) session.getAttribute("errorMsg");
								if (succMsg != null) {
							%>
							<!-- jsp code -->
							<p class="text-success text-center"><%=succMsg%>
							</p>

							<%
								session.removeAttribute("succMsg");
								}
								if (errorMsg != null) {
							%>
							<!-- jsp code -->
							<p class="text-danger text-center"><%=errorMsg%>
							</p>
							<%
							session.removeAttribute("errorMsg");
								}
							%>

							<div class="form-group">
								<label for="exampleInputEmail1">Enter Name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="name">

							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="email">

							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="password">
							</div>

							<div class="text-center mt-2">
								<button type="submit" class="btn btn-primary">Register</button>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- register form -->


	<div style="margin-top: 140px">
		<%@ include file="component/footer.jsp"%>
	</div>

</body>
</html>