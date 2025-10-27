<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import = "java.util.Calendar" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee</title>
    <style>
      body {
        font-family: Arial, Helvetica, sans-serif;
        background-color: #f9f9f9;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
        margin: 0;
      }

      h2 {
        color: #333;
        margin-bottom: 20px;
      }

      .container {
        background-color: #fff;
        padding: 20px 30px;
        border-radius: 8px;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
      }

      table {
        border-collapse: collapse;
        width: 100%;
      }

      th,
      td {
        text-align: left;
        padding: 10px 12px;
        border-bottom: 1px solid #ddd;
      }

      th {
        width: 45%;
        color: #444;
        font-weight: 600;
      }

      td {
        color: #555;
      }

      tr:last-child th,
      tr:last-child td {
        border-bottom: none;
      }

      @media (max-width: 500px) {
        .container {
          width: 90%;
          padding: 15px;
        }
        th,
        td {
          padding: 8px;
        }
      }
    </style>
</head>
<body>
    <h2>Employee Result</h2>
    <%
    	String id = request.getParameter("empId");
    	String name = request.getParameter("empName");
    	String department = request.getParameter("empDept");
    	String empEmail = request.getParameter("empEmail");
    	String empAge = request.getParameter("empAge");
    	
    	String email = empEmail.toLowerCase();
    	int age = Integer.parseInt(empAge);
    	
    	Calendar calendar = Calendar.getInstance();
    	int currentYear = calendar.get(Calendar.YEAR);
    	int birthYear = currentYear - age;
    	String nameAndDept = name + "(" +department+ ")";
    	
    %>
     <table border="1px solid black">
        <tr>
          <th>Employee Id</th>
          <td><%=id %></td>
        </tr>
        <tr>
          <th>Employee Name and Department</th>
          <td><%=nameAndDept %></td>
        </tr>
        <tr>
          <th>Employee Birth year</th>
          <td><%=birthYear %></td>
        </tr>
        <tr>
          <th>Employee email</th>
          <td><%=email %></td>
        </tr>
      </table>
    </div> 
    
</body>
</html>