<%@page import="com.dao.ExpenseDao"%>
<%@page import="com.entity.Expense"%>
<%@page import="com.db.HibernateUtil"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Expense JSP</title>
<%@include file="../components/all_css.jsp"%>
<style type="text/css">
.card-sh {
	box-shadow: 0 0 6px 0 rgba(0, 0, 0, 0.3);
}
</style>

</head>
<body class="bg-light">

<%
	int id = Integer.parseInt(request.getParameter("id"));

    ExpenseDao dao = new ExpenseDao(HibernateUtil.getSessionFactory());
    Expense ex = dao.getExpenseById(id);
	

%>

	<c:if test="${empty loginUser}">
		<c:redirect url="../login.jsp"></c:redirect>
	</c:if>

	<!-- Navbar  -->
	<%@include file="../components/navbar.jsp"%>
	<!-- Navbar  -->

	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card card-sh">
					<div class="card-header text-center">
						<p class="fs-3">Edit Expense</p>
						
					</div>

					<div class="card-body">
						<form action="../updateExpense" method="post">
							<div class="mb-3">
								<label>Title</label> <input type="text" name="title"
									class="form-control" value="<%= ex.getTitle()%>">
							</div>

							<div class="mb-3">
								<label>Date</label> <input type="date" name="date"
									class="form-control" value="<%= ex.getDate()%>">
							</div>

							<div class="mb-3">
								<label>Time</label> <input type="time" name="time"
									class="form-control" value="<%= ex.getTime()%>">
							</div>

							<div class="mb-3">
								<label>Description</label> <input type="text" name="description"
									class="form-control" value="<%= ex.getDescription()%>">
							</div>
							
							
							<div class="mb-3">
								<label>Price</label> <input type="text" name="price"
									class="form-control" value="<%= ex.getPrice()%>">
							</div>

							<input type="hidden" name="id" value="<%=ex.getId()%>">
							<button class="btn btn-success col-md-12">Update
							</button>

						</form>
					</div>

				</div>
			</div>
		</div>
	</div>

</body>
</html>