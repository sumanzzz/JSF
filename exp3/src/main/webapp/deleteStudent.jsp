<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.example.stCRUD.SDAO" %>
 <%
 	int rollNo = Integer.parseInt(request.getParameter("rollNo"));
 	SDAO dao = new SDAO();
 	dao.deleteStudent(rollNo);
 	out.println("Deleted Student Successfully!");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student</title>
</head>
<body>
	<a href="viewStudents.jsp">View Students</a>
</body>
</html>