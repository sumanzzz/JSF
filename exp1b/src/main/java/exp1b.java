

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.PrintWriter;
/**
 * Servlet implementation class exp1b
 */
@WebServlet("/exp1b")
public class exp1b extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public exp1b() {
        super();
        // TODO Auto-generated constructor stub
    }
//   
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out =  response.getWriter();
		
		String action = request.getParameter("action");
		
		if("logout".equals(action)) {
			HttpSession session = request.getSession(false);
			if(session != null) {
				session.invalidate();
			}
			response.sendRedirect("exp1b");
			return;
		}
		HttpSession session =  request.getSession(false);
		if(session !=  null && session.getAttribute("username")!= null) {
			out.println("<html><head><title>Welcome</title></head><body>");
			out.println("<h2>Welcome "+session.getAttribute("username")+"</h2>");
			out.println("<p><a href = 'exp1b?action=logout'>Logout</a></p>");
			out.println("<h3>Session ID:"+session.getId()+"</h3>");
			out.println("<h3>Creation time:"+new java.util.Date(session.getCreationTime())+"</h3>");
			out.println("<h3>Last accesed time:"+new java.util.Date(session.getLastAccessedTime())+"</h3>");
			out.println("</body></html>");
		}
		else {
			String login = """
					<!DOCTYPE html>
					<html lang="en">
					<head>
						<meta charset="UTF-8">
						<meta name="viewport" content="width=device-width, initial-scale=1.0">
						<title>Login</title>
					</head>
					<body>
						<h2>Login </h2>
						<form method ='post' action = 'exp1b'>
							<input type ='text' placeholder="username" name = "username"><br><br>
							<input type="password" placeholder="password" name="password"><br><br>
							<button type="submit">Submit</button>
						</form>
						</body>
						</html>
					""";
			out.println(login);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if(username != null && username.equals("admin") && password != null && password.equals("pass123")) {
			HttpSession session = request.getSession(true);
			session.setAttribute("username", username);
			response.sendRedirect("exp1b");
		}
		else {
			response.sendRedirect("exp1b");
		}
		
	}
	
	

}
