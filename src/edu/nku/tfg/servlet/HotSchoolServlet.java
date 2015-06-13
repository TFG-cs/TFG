package edu.nku.tfg.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.nku.tfg.biz.IHotSchoolBiz;
import edu.nku.tfg.biz.impl.HotSchoolBizImpl;
import edu.nku.tfg.po.School;

/**
 * Servlet implementation class HotSchoolServlet
 */
public class HotSchoolServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HotSchoolServlet() {
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
		// 步骤1：设置字符编码集合
				request.setCharacterEncoding("UTF-8");
				// 步骤2：接受客户端传入的数据

				// 步骤3：将其进行对象封装
				
				// 步骤4：调用Biz层业务实现回复动作
				IHotSchoolBiz Biz = new HotSchoolBizImpl();
				List<School> listSchools=Biz.hotSchool();
				// 步骤5：根据动作结果响应客户端
				if(listSchools!=null)
				{
					request.setAttribute("ListSchools", listSchools);
					RequestDispatcher dispatcher = request
							.getRequestDispatcher("jsp/Index.jsp");
					dispatcher.forward(request, response);
				}
				else {
					System.out.println("HotSchool获取失败！！！！！");
				}
	}

}
