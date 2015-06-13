package edu.nku.tfg.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.nku.tfg.biz.IAddTopicBiz;
import edu.nku.tfg.biz.impl.AddTopicBizImpl;
import edu.nku.tfg.po.Topic;

/**
 * Servlet implementation class AddTopicServlet
 */
public class AddTopicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTopicServlet() {
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
		int userid = Integer.parseInt(request.getParameter("userid").trim());
		int schoolid = Integer.parseInt(request.getParameter("schoolid").trim());
		String text = request.getParameter("cleditor").trim();
		String title = request.getParameter("title").trim();
		// 步骤3：将其进行对象封装
		Topic t = new Topic();
		t.setUserID(userid);
		t.setSchoolID(schoolid);
		t.setTopicText(text);
		t.setTopicTitle(title);
		// 步骤4：调用Biz层业务实现回复动作
		IAddTopicBiz Biz = new AddTopicBizImpl();
		boolean flag = Biz.addNewTopic(t);
		// 步骤5：根据动作结果响应客户端
		if(flag){
			System.out.println("回复成功！");
			request.setAttribute("isAddTopic", flag);
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("jsp/Index.jsp");
			dispatcher.forward(request, response);
		}else{
			System.out.println("回复失败！");
			request.setAttribute("isAddTopic", flag);
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("jsp/Index.jsp");
			dispatcher.forward(request, response);
		}
	}

}
