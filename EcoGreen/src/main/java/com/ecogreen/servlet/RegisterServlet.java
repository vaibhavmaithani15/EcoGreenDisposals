package com.ecogreen.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.exception.ConstraintViolationException;

import com.ecogreen.entities.Users;
import com.ecogreen.helper.FactoryProvider;


public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public RegisterServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		WRITTEN BY VAIBHAV
		PrintWriter out = response.getWriter();
		HttpSession httpSession = request.getSession();
		try {
			
			String userName = request.getParameter("user_name");
			String userEmail = request.getParameter("user_email");
			String userPassword = request.getParameter("user_password");
			String userPhone = request.getParameter("user_phone");
			String userAddress = request.getParameter("user_address");
//			validations
			Session hibernateSession = FactoryProvider.getFactory().openSession();
			// Creating to User Object
			Users user = new Users(userName, userEmail, userPassword, userPhone, "default.jpg", userAddress, "normal");

			Transaction tx = hibernateSession.beginTransaction();
			int userId = (Integer) hibernateSession.save(user);
			tx.commit();
			hibernateSession.close();
			//httpSession.setAttribute("message", "Registration Successfull");
			response.sendRedirect("Register.jsp");
			return;

		}catch (ConstraintViolationException e) {
			e.printStackTrace();
//			HttpSession httpSession = request.getSession();
		//	httpSession.setAttribute("errormessage", "Email Already Registered");
			response.sendRedirect("Register.jsp");
		}
		catch (Exception e) {
			
			
		}
	}

}
