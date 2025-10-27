package com.example.stCRUD;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

public class SDAO {
	
	public void addStudent(Student student) {
		String sql = "INSERT INTO student (roll_no,name,email,age) VALUES (?,?,?,?)";
		
		try(Connection connection = DBC.getConnection();PreparedStatement statement = connection.prepareStatement(sql)){
			statement.setInt(1,student.getRollNo());
			statement.setString(2, student.getName());
			statement.setString(3, student.getEmail());
			statement.setInt(4, student.getAge());
			statement.executeUpdate();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public List<Student> getAllStudents(){
		List<Student> students = new ArrayList<>();
		String sql = "SELECT * FROM student";
		
		try(Connection connection = DBC.getConnection();Statement statement = connection.createStatement()){
			ResultSet resultset = statement.executeQuery(sql);
			while(resultset.next()) {
				Student student = new Student();
				student.setRollNo(resultset.getInt("roll_no"));
				student.setName(resultset.getString("name"));
				student.setEmail(resultset.getString("email"));
				student.setAge(resultset.getInt("age"));
				students.add(student);
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return students;
	}
	
	public void updateStudent(Student student) {
		String sql = "UPDATE student SET name = ? , email = ? , age = ? WHERE roll_no = ?";
		try(Connection connection = DBC.getConnection();PreparedStatement statement = connection.prepareStatement(sql)){
			statement.setString(1, student.getName());
			statement.setString(2, student.getEmail());
			statement.setInt(3,student.getAge());
			statement.setInt(4, student.getRollNo());
			statement.executeUpdate();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void deleteStudent(int rollNo) {
		String sql = "DELETE  FROM student WHERE roll_no = ?";
		try(Connection connection = DBC.getConnection();PreparedStatement statement = connection.prepareStatement(sql)){
			statement.setInt(1, rollNo);
			statement.executeUpdate();
		
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
	}
}
