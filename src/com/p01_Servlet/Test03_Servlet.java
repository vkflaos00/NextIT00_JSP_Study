package com.p01_Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test03_Servlet extends HttpServlet{
	
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("Test03_Servlet 서블릿 init() 메소드 호출되어짐");
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Test03_Servlet 서블릿 doGet() 메소드 호출되어짐");
		
		resp.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = resp.getWriter();
		out.print("<html>");
		out.print("<body>");
		out.print("<h1>doGet() 메소드가 응답</h1>");
		out.print("</body>");
		out.print("</html>");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Test03_Servlet 서블릿 doPost() 메소드 호출되어짐");

		resp.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = resp.getWriter();
		out.print("<html>");
		out.print("<body>");
		out.print("<h1>doPost() 메소드가 응답</h1>");
		out.print("</body>");
		out.print("</html>");
	}
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("Test03_Servlet 서블릿 destroy() 메소드 호출되어짐");
	}
	
}
