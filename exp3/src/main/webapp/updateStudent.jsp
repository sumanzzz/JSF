<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.example.stCRUD.Student" %>
<%@ page import="com.example.stCRUD.SDAO" %>

<%
	SDAO dao = new SDAO();
	int rollNo = Integer.parseInt(request.getParameter("rollNo"));
	
	Student student = new Student();
	for(Student s : dao.getAllStudents()){
		if(s.getRollNo() == rollNo){
			student = s;
			break;
		}
	}
	if(request.getParameter("name")!= null){
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		int age = Integer.parseInt(request.getParameter("age"));
		
		student.setName(name);
		student.setEmail(email);
		student.setAge(age);
		
		dao.updateStudent(student);
		out.println("Student updated Successfully!");
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student</title>
</head>
<body>
    <h2> Update Student </h2>
    <form method="post" action="updateStudent.jsp?rollNo=<%=student.getRollNo()%>">
        <input type="text" placeholder="Name" name="name" value="<%=student.getName() %>"> <br><br>
        <input type="email" placeholder="Email" name="email"value="<%=student.getEmail() %>"><br><br>
        <input type="number" placeholder="Age" name="age"value="<%=student.getAge() %>"><br><br>
        <button type="submit">Update</button>
    </form>
      <br><br><a href = "viewStudents.jsp">View Students</a><br><br>
</body>
</html>