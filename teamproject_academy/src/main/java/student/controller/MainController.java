package student.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import student.dao.MainDAO;
import vo.BoardVO;


public class MainController {
	public void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MainDAO mainDAO = new MainDAO();

		//수강과목 목록
		List<Map<String, Object>> courseList = mainDAO.selectCourseAll();
		request.setAttribute("courseList", courseList);
		//공지사항 목록
		List<BoardVO> noticeList = mainDAO.selectNoticeAll();
		request.setAttribute("noticeList", noticeList);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/student/stuMain.jsp");
		rd.forward(request, response);
	}
	public void doPostAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/student/stuMain.jsp");
		rd.forward(request, response);
	}
	
}
