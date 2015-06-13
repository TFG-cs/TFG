package edu.nku.tfg.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.nku.tfg.biz.IShowschoolBiz;
import edu.nku.tfg.biz.impl.ShowschoolBizImpl;
import edu.nku.tfg.po.School;

/**
 * Servlet implementation class ShowschoolServlet
 */
@WebServlet("/ShowschoolServlet")
public class ShowschoolServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowschoolServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		IShowschoolBiz showschoolBiz = new ShowschoolBizImpl();
		
		List<School> lstSchool = new ArrayList<School>();
	
		lstSchool = showschoolBiz.showSch(1);
	
		request.setAttribute("lstSchool",lstSchool);
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/school2.jsp");
		dispatcher.forward(request, response);
	}

}
