package it.unisa.control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unisa.model.UserBean;
import it.unisa.model.UserModelDS;

@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Register() {
        super();
     
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		UserModelDS model = new UserModelDS();
		String username = request.getParameter("username");
		boolean alreadyReg = false;
		
		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<UserBean> users = (ArrayList<UserBean>) model.doRetrieveByKey("username");
			for(UserBean bean : users) {
				if(bean.getUsername().equals(username)){
					alreadyReg=true;
				}
			}
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		
		
		if(alreadyReg) {
			request.getSession().setAttribute("alreadyReg", "true");
			response.sendRedirect("registerpage.jsp");
		}
		
		else if(!request.getParameter("password1").equals(request.getParameter("password2"))) {
			request.getSession().setAttribute("incorrectPasswords", "true");
			response.sendRedirect("registerpage.jsp");
		}
		
		else {
			UserBean user = new UserBean();
			user.setUsername(request.getParameter("username"));
			user.setPassword(request.getParameter("password1"));
			user.setName(request.getParameter("name"));
			user.setSurname(request.getParameter("surname"));
			user.setTelephone(request.getParameter("telephone"));
			user.setEmail(request.getParameter("email"));
			user.setAddress(request.getParameter("address"));
			user.setCity(request.getParameter("city"));
			user.setCap(request.getParameter("cap"));
			
			try {
				model.doSave(user);
			}
			catch(Exception e) {
				System.out.println(e);
			}
			
			response.sendRedirect("regconfirm.jsp");
			
		}	
	}
}