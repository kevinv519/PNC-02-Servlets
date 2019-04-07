package com.uca.capas.servlets;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class AnotacionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnotacionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Map<String, String> messages = new HashMap<>();
		request.setAttribute("messages", messages);
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if (username == null || username.trim().isEmpty()) {
			messages.put("emptyUsername", "Please enter a username");
		}
		if (password == null || password.trim().isEmpty()) {
			messages.put("emptyPassword", "Please enter a password");
		}
		if (messages.isEmpty()) {
			if (!username.equals("kevin") || !password.equals("00018616" )) {
				messages.put("invalidUser", "Incorrect username or password");
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		}
		if (messages.isEmpty()) {
			request.setAttribute("user", username);
			request.setAttribute("password", password);
			request.getRequestDispatcher("welcome.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}

}
