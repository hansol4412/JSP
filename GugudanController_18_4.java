package com.controller;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.model.NumberBean_18_4;
public class GugudanController_18_4 extends HttpServlet {
	/* 18_4.request ���� ��ü�� getParameter() �޼ҵ带 �̿��Ͽ� ���۵� ��û �Ķ���� ���� �޾�
	 GugudanModel ���� �������� ����ϴ� �޼ҵ带 ȣ���ϰ� ����� ���� result.jsp�� ���� */
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException{
		String number= request.getParameter("number");
		
		NumberBean_18_4 bean = new NumberBean_18_4();
		bean.setNumber(number);
		request.setAttribute("bean", bean);
		
		RequestDispatcher rd = request.getRequestDispatcher("result_18_4.jsp");
		rd.forward(request, response);
	}
	
}
