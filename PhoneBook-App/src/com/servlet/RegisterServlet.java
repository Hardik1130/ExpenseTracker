package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.DbConnect;
import com.dao.UserDAO;
import com.entity.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		User u = new User(name,email,password);
		UserDAO dao = new UserDAO(DbConnect.getConn());
		boolean f = dao.userRegister(u);
		
		HttpSession session = request.getSession();
		
		
		if(f)
		{
			session.setAttribute("succMsg", "User Register Successfully...");
			response.sendRedirect("register.jsp");
		}
		else
		{
			session.setAttribute("errorMsg", "Something wrong on server...");
			response.sendRedirect("register.jsp");
		}
	}
	

}
