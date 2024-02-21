package professor.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import professor.dao.ProfInfoDAO;

public class ProfInfoController {
	
	public void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/professor/profInfo/profInfo.jsp");
		rd.forward(request, response);
	}
	
	public void doPostAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
}
