package servlet;

import JavaClasses.DB;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

@MultipartConfig
public class SigninServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger LOGGER = Logger.getLogger(SigninServlet.class.getName());

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = null;
        try {
            String username = request.getParameter("username");
            String pass = request.getParameter("pass");
            String email = request.getParameter("email");
            
            Part img=request.getPart("image");
    		
    		String imgName=img.getSubmittedFileName();
    		System.out.println(imgName);
    		
    		String uploadPath="C:/Users/user/eclipse-workspace/JSP/SpectWebsite/src/main/webapp/images/ProfileImg/"+imgName;
    		System.out.println(uploadPath);
    	
    		FileOutputStream out=new FileOutputStream(uploadPath);
    		InputStream in=img.getInputStream();
    	
    		byte[] data=new byte[in.available()];
    		in.read(data);
    		out.write(data);
    		out.close();
    		in.close();
    		System.out.println("uploaded");
            
            if (username != null && pass != null && email != null) {
                if (DB.addData(username, pass, email, imgName)) {
                    request.setAttribute("msg", "Account has been created successfully");
                    rd = request.getRequestDispatcher("Login.jsp");
                    rd.forward(request, response);
                } else {
                    request.setAttribute("msg", "Unable to create account");
                    rd = request.getRequestDispatcher("Register.jsp");
                    rd.forward(request, response);
                }
            } else {
                request.setAttribute("msg", "Fill all the fields");
                rd = request.getRequestDispatcher("Register.jsp");
                rd.forward(request, response);
            }
        } catch (Exception e) {
            LOGGER.log(Level.SEVERE, "Exception occurred: ", e);
            e.printStackTrace();
            rd = request.getRequestDispatcher("ErroPage.jsp");
            rd.forward(request, response);
        }
    }
}
