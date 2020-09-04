package cn.edu.hezeu.jsj.maha.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import cn.edu.hezeu.jsj.maha.javaBean.compon_javaBean;

public class compon_servlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public compon_servlet() {
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
		PrintWriter out = response.getWriter();
		HttpSession session =request.getSession();
		int one = Integer.parseInt(request.getParameter("one"));
		int two = Integer.parseInt(request.getParameter("two"));
		int xuan = Integer.parseInt(request.getParameter("xuan"));
		compon_javaBean compon = new compon_javaBean();
		request.setAttribute("sole", compon.result(one, two, xuan));
		request.setAttribute("one", one);
		request.setAttribute("two", two);
		request.setAttribute("xuan", xuan);
//		System.out.println(compon.result(one, two, xuan));
		System.out.println("555");
//		out.print("<script language=javascript>"+"javascript:history.go(-1);</script>");
		System.out.println("666");
		request.getRequestDispatcher("../ch00/compon.jsp").include(request,response);
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
