<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.example.stCRUD.Student" %>
<%@ page import="com.example.stCRUD.SDAO" %>
 
<%
	SDAO dao = new SDAO();
	List<Student> students = dao.getAllStudents();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student</title>
</head>
<body>
	<h2>View Students</h2>
	<table border=1>
		<tr>
			<th>Student Roll No </th>
			<th>Student Name </th>
			<th>Student Email </th>
			<th>Student Age </th>
			<th>Actions </th>
		</tr>
		<% for(Student student : students){ %>
				<tr>
					<td><%=student.getRollNo() %></td>
					<td><%=student.getName() %></td>
					<td><%=student.getEmail() %></td>
					<td><%=student.getAge() %></td>
					<td>
						<a href="updateStudent.jsp?rollNo=<%=student.getRollNo()%>">Edit</a>
						<a href="deleteStudent.jsp?rollNo=<%=student.getRollNo()%>">Delete</a>
					</td>
				</tr>
		<%} %>
			
	</table>
	<a href="addStudent.jsp">Add Student</a>
</body>
</html>