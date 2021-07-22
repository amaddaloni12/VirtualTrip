package it.unisa.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unisa.model.OrderBean;
import it.unisa.model.OrderModelDS;

@WebServlet("/Order")
public class Order extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Order() {
        super();
     
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		OrderModelDS orderDs = new OrderModelDS();

			int userid = Integer.parseInt(request.getParameter("userid"));
			int total = Integer.parseInt(request.getParameter("total"));
			
			OrderBean order = new OrderBean();
			order.setUserid(userid);
			order.setData(request.getParameter("data"));
			order.setTotal(total);
			order.setPaymethod(request.getParameter("paymethod"));
			
			try {
				orderDs.doSave(order);
			}
			catch(Exception e) {
				System.out.println(e);
			}
			
			response.sendRedirect("confirmation.jsp");
			
		}	
}