package com.trainingapplication.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.trainingapplication.model.Course;
import com.trainingapplication.model.CourseRegister;
import com.trainingapplication.utils.EmailSendUtils;
import com.trainingapplication.utils.JDBCUtils;
import com.trainingapplication.utils.ReadSheetUtils;

public class ChosenCourseDaoService implements ChosenCourseDao  {
	private static final String INSERT_CourseS_SQL = "INSERT INTO courses"
			+ "  (username, emailid, coursename, price) VALUES " + " (?, ?, ?, ?);";

	private static final String SELECT_Course_BY_ID = "select * from courses where id =?";

	
	@Override
	public void insertCourse(CourseRegister Course) throws SQLException {
		System.out.println(INSERT_CourseS_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CourseS_SQL)) {
			preparedStatement.setString(1, Course.getUserName());
			preparedStatement.setString(2, Course.getEmailId());
			preparedStatement.setString(3, Course.getPhonenumber());
			preparedStatement.setString(3, Course.getCourseName());
			preparedStatement.setDouble(4, Course.getPrice());
			
			
			//preparedStatement.setInt(5, Course.getstatus());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
			new EmailSendUtils().SendEmail(Course.getEmailId(),Course.getCourseName());  //after inserted send mail to particular users 
		} catch (SQLException exception) {
			System.out.print(exception);
		}
	}

	@Override
	public CourseRegister selectCourse(int CourseId) {
		CourseRegister Course = null;
		// Step 1: Establishing a Connection
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_Course_BY_ID);) {
			preparedStatement.setLong(1, CourseId);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			
			while (rs.next()) {
				int id = rs.getInt("id");
				String username = rs.getString("username");
				String emailid = rs.getString("emailid");
				String phonenumber=rs.getString("phonenumber");
				String coursename = rs.getString("coursename");
				double price = rs.getLong("price");
				//LocalDate targetDate = rs.getDate("target_date").toLocalDate();
				//int status = rs.getInt("status");
				Course = new CourseRegister(id, username, emailid, phonenumber, coursename, price);
			
			}
		} catch (SQLException exception) {
			System.out.println(exception);
		}
		return Course;
	}
	

	@Override
	public List<Course> getAllCourses() {
		
		return ReadSheetUtils.ReadCourse("C:\\Users\\user\\eclipse-workspace\\Training Department\\src\\main\\webapp\\TrainingDepartment.xlsx"); // calling excel sheet Path..
	}
	
	@Override
	public double getCoursePrice(String courseName) //get the price from excel sheet.
	{
		 List<Course> listerCourse= getAllCourses();
		 
		 for( Course currentCourse:listerCourse) {
			 if(currentCourse.getCourseName().equalsIgnoreCase(courseName))  //check courseName 
				 return currentCourse.getPrice();
		 }
		return 0;
	}}
	

