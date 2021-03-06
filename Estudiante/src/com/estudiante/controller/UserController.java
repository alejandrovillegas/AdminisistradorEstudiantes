package com.estudiante.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.estudiante.dao.UserDao;
import com.estudiante.model.user;





public class UserController extends HttpServlet {
	 private static final long serialVersionUID = 1L;
	 private static String INSERT_OR_EDIT = "/user.jsp";
	 private static String LIST_USER = "/listUser.jsp";
	 private UserDao dao;
	 
	 public UserController() {
		 super();
		 dao = new UserDao();
	 }

	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String forward="";
		 String action = request.getParameter("action");
		 if (action.equalsIgnoreCase("delete")){
			 int id = Integer.parseInt(request.getParameter("id"));
			 dao.deleteUser(id);
			 forward = LIST_USER;
			 request.setAttribute("users", dao.getAllUsers());
		 } else if (action.equalsIgnoreCase("edit")){
			 forward = INSERT_OR_EDIT;
			 int userId = Integer.parseInt(request.getParameter("id"));
			 user user = dao.getUserById(userId);
			 request.setAttribute("user", user);
		 } else if (action.equalsIgnoreCase("listUser")){
			 forward = LIST_USER;
			 request.setAttribute("users", dao.getAllUsers());
		 } else {
			 forward = INSERT_OR_EDIT;
		 }
		 	RequestDispatcher view = request.getRequestDispatcher(forward);
		 	view.forward(request, response);
		 }
	 
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 	user user = new user();
		 	user.setNombre(request.getParameter("nombre"));
		 	user.setn1(Double.parseDouble(request.getParameter("n1")));
		 	user.setn2(Double.parseDouble(request.getParameter("n2")));
		 	user.setn3(Double.parseDouble(request.getParameter("n3")));
		 	user.setn4(Double.parseDouble(request.getParameter("n4")));
		  	String id = request.getParameter("id");
		 if(id == null || id.isEmpty())
		 {
		 		dao.addUser(user);
		 }
		 else
		 {
			 user.setid(Integer.parseInt(id));
			 dao.updateUser(user);
		 }
		 	RequestDispatcher view = request.getRequestDispatcher(LIST_USER);
		 	request.setAttribute("users", dao.getAllUsers());
		 	view.forward(request, response);
		 }	 
	 
}
