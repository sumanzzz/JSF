<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Employee</title>
    <style>
      body {
        font-family: Arial, Helvetica, sans-serif;
        background-color: #f4f4f4;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        margin: 0;
      }

      .container {
        background-color: #fff;
        width: 360px;
        padding: 25px 30px;
        border-radius: 10px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
      }

      h2 {
        text-align: center;
        color: #333;
        margin-bottom: 20px;
      }

      input {
        width: 100%;
        padding: 10px;
        margin: 8px 0 15px 0;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 14px;
      }

      input:focus {
        outline: none;
        border-color: #0078d4;
      }

      button {
        width: 100%;
        background-color: #0078d4;
        color: #fff;
        border: none;
        padding: 10px;
        border-radius: 6px;
        font-size: 15px;
        cursor: pointer;
      }

      button:hover {
        background-color: #005fa3;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h2>Employee Information</h2>
      <form method="post" action="employeeResult.jsp">
        <input type="number" placeholder="Employee ID" name="empId" required />
        <input type="text" placeholder="Employee Name" name="empName" required />
        <input type="number" placeholder="Employee Age" name="empAge" required />
        <input type="text" placeholder="Employee Department" name="empDept" required />
        <input type="email" placeholder="Employee Email" name="empEmail" required />
        <button type="submit">Submit</button>
      </form>
    </div>
  </body>
</html>
