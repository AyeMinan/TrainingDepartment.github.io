package com.trainingdepartment.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.trainingapplication.dao.ChosenCourseDao;
import com.trainingapplication.model.Course;
import com.trainingapplication.model.CourseRegister;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class TrainingSessionController {
	
	private ChosenCourseDao courseDAO;
	
	TrainingSessionController(ChosenCourseDao _courseDAO){
		courseDAO=_courseDAO;
	}
	

	public void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Course> listCourse = courseDAO.getAllCourses();// get all courses from excel sheet from Dao assign to array list
		request.setAttribute("listCourse", listCourse);  //setAttribute 
		RequestDispatcher dispatcher = request.getRequestDispatcher("course-register.jsp");//calling course-register.jsp
		dispatcher.forward(request, response);
	}


	public void insertCourse(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		
		String username = request.getParameter("username");
		String emailid = request.getParameter("emailid");
		String phonenumber=request.getParameter("phonenumber");
		String coursename = request.getParameter("coursename");
		
		double price = courseDAO.getCoursePrice(coursename); // get price from excel sheet 
	    CourseRegister newCourse = new CourseRegister( username, emailid, phonenumber, coursename, price);
		courseDAO.insertCourse(newCourse);
		RequestDispatcher dispatcher = request.getRequestDispatcher("thankyou.jsp");
		request.setAttribute("Course", newCourse);
		dispatcher.forward(request, response);
	}
}
	
	
	


