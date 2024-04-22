package CustomerInfoLogicClasses;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.ResultSet;

@WebServlet("/CustomerSearchServlet")
public class CustomerSearchServlet extends HttpServlet {

    public CustomerSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String customerName = request.getParameter("customerName");
		ResultSet resultSet = Customer.searchCustomer(customerName);
		session.setAttribute("resultSet", resultSet);
		response.sendRedirect("CustomerDisplay.jsp");
		
	}

	

}
