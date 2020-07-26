package com.controller;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.model.NumberBean_18_4;
public class GugudanController_18_4 extends HttpServlet {
	/* 18_4.request 내장 객체의 getParameter() 메소드를 이용하여 전송된 요청 파라미터 값을 받아
	 GugudanModel 모델의 구구단을 계산하는 메소드를 호출하고 결과를 뷰인 result.jsp에 전달 */
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
