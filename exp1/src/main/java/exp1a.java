

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class exp1a
 */
@WebServlet("/exp1a")
public class exp1a extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public exp1a() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out  =  response.getWriter();
		String calculator = """
				<!DOCTYPE html>
				<html lang="en">
				<head>
					<meta charset="UTF-8" />
					<meta name="viewport" content="width=device-width, initial-scale=1.0" />
					<title>Calculator</title>
				</head>
				<body>
					<h2>Calculator</h2>
					<form method="POST" action="exp1a">
						<input type="number" placeholder="num1" name="num1" /><br /><br />
						<input type="number" placeholder="num2" name="num2" /><br /><br />
						<select name = "op"> 
							<option value = "+">Add </option>
							<option value = "-">Sub </option>
							<option value = "*">Mul </option>
							<option value = "/">Div </option>
						</select>
						<br><br>
						<button type="submit">Submit</button>
					</form>
				</body>
				</html>
				""";
		out.println(calculator);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		String op = request.getParameter("op");
		
		double n1 = Double.parseDouble(num1);
		double n2 = Double.parseDouble(num2);
		
		double res = 0;
		
		response.setContentType("text/html");
		PrintWriter out =  response.getWriter();
		out.println("<html><body>");
		out.println("<p>Result:</p>");
		switch(op) {
			case "+" -> res = n1 + n2;
		
			case "-" -> res = n1 - n2;
		
			case "*" -> res = n1 * n2;
		
			case "/" ->{
				if(n2 == 0) out.println("<p>Cannot divide by zero</p>");
				else res = n1 /n2;
			}
		}
		out.println("<p>"+res+"</p>");
		out.println("<p><a href ='exp1a'>Caluculator</a><p>");
		out.println("</body></html>");
		
		
	}

}
