package cn.edu.hezeu.jsj.maha.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.edu.hezeu.jsj.maha.javaBean.validation_login_javaBean;

public class validation_login_servlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public validation_login_servlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		System.out.println("1");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		
		validation_login_javaBean va_login = new validation_login_javaBean();
		if(va_login.isUser(userName, password)){
			session.setAttribute("userName" , "马哈");//此处 马哈 为密码正确后从数据库得到的  
			out.print("<script language='javascript'>alert('登录成功');location='../ch00/main.jsp';</script>");
//			request.getRequestDispatcher("maha/main.jsp");
		} else {
			out.print("<script language='javascript'>alert('登录失败');location='../ch00/login_imitate.jsp';</script>");
		}
		
		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
