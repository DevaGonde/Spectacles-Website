package servlet;

import JavaClasses.DB;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		RequestDispatcher rd = null;
		try {
			String username = request.getParameter("name");
			String pass = request.getParameter("pass");

			if (DB.verify(username, pass)) {
				rd = request.getRequestDispatcher("index.jsp?name"+username+"&pass="+pass);
				rd.forward(request, response);
			} else {
				rd = request.getRequestDispatcher("Login.jsp");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			try {
				e.printStackTrace();
				rd = request.getRequestDispatcher("ErroPage.jsp");
				rd.forward(request, response);
			} catch (Exception e1) {
				e1.printStackTrace();
			}
		}
	}

}
