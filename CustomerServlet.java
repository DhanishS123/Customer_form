package CustomerInfoLogicClasses;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/CustomerServlet")
public class CustomerServlet extends HttpServlet {
	
	public CustomerServlet() {
		super();
		// TODO Auto-generated constructor stub
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		
		//to get input from customerform.jsp
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
	
		//sending this data to next pages or multiple pages
		session.setAttribute("name", name);
		session.setAttribute("address", address);
		session.setAttribute("email", email);
		session.setAttribute("mobile",mobile );
		
		//customer.java 's object was created so that data from here to transfered that java file
		Customer cust = new Customer();
		boolean status = cust.insertCustomer(name, address, email, mobile);
		
		session.setAttribute("status", status);
			
		response.sendRedirect("status.jsp");
	}

	
	

}
