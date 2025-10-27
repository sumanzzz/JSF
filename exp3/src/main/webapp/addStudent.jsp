<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.example.stCRUD.Student" %>
 <%@ page import="com.example.stCRUD.SDAO" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student</title>
</head>
<body>
    <h2> Add Student </h2>
    <form method="post" action="addStudent.jsp">
        <input type="number" placeholder="Roll No" name="rollNo"><br><br>
        <input type="text" placeholder="Name" name="name"> <br><br>
        <input type="email" placeholder="Email" name="email"><br><br>
        <input type="number" placeholder="Age" name="age"><br><br>
        <button type="submit">Submit</button>
    </form>
    <br><br><a href = "viewStudents.jsp">View Students</a><br><br>
</body>
</html>

<% 
if(request.getParameter("rollNo")!= null){
	int rollNo = Integer.parseInt(request.getParameter("rollNo"));
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	int age = Integer.parseInt(request.getParameter("age"));
	
	Student student = new Student();
	student.setRollNo(rollNo);
	student.setName(name);
	student.setEmail(email);
	student.setAge(age);
	
	SDAO dao = new SDAO();
	dao.addStudent(student);
	
	out.println("Student Added successfully!");
	
	
}
%>