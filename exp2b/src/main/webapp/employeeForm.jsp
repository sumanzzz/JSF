<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee</title>
</head>
<body>
    <h2>Employee From</h2>
    <form method="post" action="employeeResult.jsp">
        <input type="number" placeholder="Employee Id" name="empId"><br><br>
        <input type="text" placeholder="Employee name" name="empName"><br><br>
        <input type="text" placeholder="Employee Email" name="empEmail"><br><br>
        <select name="empDsept"  >
            <option value="HR">HR</option>
            <option value="HR">Tester</option>
            <option value="HR">Secuity</option>
            <option value="HR">SDE</option>
        </select><br><br>
        <input type="number" placeholder="Employee Age" name="empAge"><br><br>
        <button type="submit">Submit</button>
    </form>
</body>
</html>