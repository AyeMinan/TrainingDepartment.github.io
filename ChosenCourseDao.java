package com.trainingapplication.dao;

import java.sql.SQLException;
import java.util.List;

import com.trainingapplication.model.Course;
import com.trainingapplication.model.CourseRegister;

public interface ChosenCourseDao {
	
	void insertCourse(CourseRegister Course) throws SQLException;
	CourseRegister selectCourse(int CourseId);
	List<Course> getAllCourses();

	double getCoursePrice(String courseName );
	



}
