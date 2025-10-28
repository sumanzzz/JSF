<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<%
    if(request.getParameter("empId") != null) {
        boolean valid = true;
        List<String> errors = new ArrayList<>();

        int id = Integer.parseInt(request.getParameter("empId"));
        String name = request.getParameter("empName");
        String email = request.getParameter("empEmail");
        String department = request.getParameter("empDept");
        int age = Integer.parseInt(request.getParameter("empAge"));

        // Regex patterns
        String nameRegex = "^[A-Za-z ]+$";
        String emailRegex = "^[A-Za-z0-9]+@[A-Za-z0-9]+\\.[A-Za-z]{2,}$";

        // Validation checks
        if(!name.matches(nameRegex)||name==null) {
            valid = false;
            errors.add("Name cannot be empty and must contain only alphabets and spaces.");
        }

        if(!email.matches(emailRegex)) {
            valid = false;
            errors.add("Invalid email (ex: example@domain.com) — only letters and numbers allowed.");
        }
        if(department.trim().isEmpty()){
        	valid = false;
        	errors.add("Please select an valid department");
        }

        if(age < 18 || age > 65) {
            valid = false;
            errors.add("Age must be between 18 and 65.");
        }

        // Display results
        if(!valid) {
%>
            <h3 style="color:red;">Form has the following errors:</h3>
            <ul>
            <% for(String err : errors) { %>
                <li><%= err %></li>
            <% } %>
            </ul>
		<%
        } 
        else {
        	Calendar calendar = Calendar.getInstance();
        	int currentYear = calendar.get(Calendar.YEAR);
        	int birthYear = currentYear - age;
        	
        	String formattedEmail = email.toLowerCase();
        	String nameAndDept = name + "(" + department + ")";
		%>
           <table border = 1>
           		<tr>
           			<th>Employee ID</th>
           			<td><%=id %></td>
           		</tr>
           		<tr>
           			<th>Employee name </th>
           			<td><%=nameAndDept %></td>
           		</tr>
           		<tr>
           			<th>Employee email</th>
           			<td><%=formattedEmail %></td>
           		</tr>
           		
           		<tr>
           			<th>Employee birthyear</th>
           			<td><%=birthYear %></td>
           		</tr>
           		
           		
           </table>
<%
        }
    }
%>


