package com.trainingdepartment.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.trainingapplication.dao.ChosenCourseDao;
import com.trainingapplication.dao.ChosenCourseDaoService;
import com.trainingapplication.model.Course;
import com.trainingapplication.model.CourseRegister;

@WebServlet("/")
public class TrainingSessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ChosenCourseDao courseDAO;
	private TrainingSessionController  sessionController;

    public TrainingSessionServlet() {
        super();
        courseDAO = new ChosenCourseDaoService();
        sessionController=new TrainingSessionController(courseDAO);
        
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String action = request.getServletPath();

		try {
			switch (action) {
			case "/new":
				sessionController.showNewForm(request, response);
				break;
			case "/insert":
				sessionController.insertCourse(request, response);
				break;
			default:
				RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");//calling index.jsp 
				dispatcher.forward(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}

    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Course Auto-generated method stub
		doGet(request,response);
			}


	

}
