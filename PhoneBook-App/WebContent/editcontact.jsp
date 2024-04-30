<%@page import="com.dao.ContactDAO"%>
<%@page import="com.conn.DbConnect"%>
<%@page import="java.util.*"%>
<%@page import="com.entity.Contact"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EditContact Page</title>
<%@ include file="component/allCss.jsp"%>

</head>
<body>

	<!-- Navbar Begin -->
	<%@ include file="component/navbar.jsp"%>
	<!-- Navbar end -->

	<%
		if (user == null) {
			session.setAttribute("invalidMsg", "Login Please..");
			response.sendRedirect("login.jsp");
		}
	%>


	<!-- Edit form -->
	<div class="container-fluid">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">

						<form action="update" method="post">
							<%
								int cid = Integer.parseInt(request.getParameter("cid"));
								ContactDAO dao = new ContactDAO(DbConnect.getConn());
								Contact c = dao.getContactByID(cid);
							%>
							
								<input type="hidden" value="<%= cid%>" name="cid">
							
							
							
							<h4 class="text-center text-success">Update Contact Page</h4>
							
							<%
								String errorMsg = (String) session.getAttribute("failedMsg");
								if (errorMsg != null) {
							%>
							
							<p class="text-danger text-center"><%=errorMsg%>
							</p>
							<%
							session.removeAttribute("failedMsg");
								}
							%>	
					
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Name</label> <input
									value="<%=c.getName()%>" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="name">

							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									value="<%=c.getEmail()%>" type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="email">

							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Enter Phone No</label> <input
									value="<%=c.getPhno()%>" type="number" class="form-control"
									id="exampleInputPassword1" name="phno">
							</div>

							<div class="form-group">
								<textarea name="about" class="form-control"
									placeholder="Enter About" rows="3"><%=c.getAbout()%></textarea>
							</div>

							<div class="text-center mt-2">
								<button type="submit" class="btn btn-success">Update
									Contact</button>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Edit form -->


	<%@ include file="component/footer.jsp"%>
</body>
</html>