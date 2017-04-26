package travel.carpool.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.carpool.action.Action;
import travel.carpool.action.ActionForward;



@WebServlet({ "/CarpoolAddController", "*.do" })
public class CarpoolAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public CarpoolAddController() {
        super();
    }
    public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //요청되는 URL이 무엇인지 확인해본다. getRequestURI메서드를 통해서
        String requestURI = request.getRequestURI();
        //System.out.println(requestURI);
        String contextPath = request.getContextPath();
        String command = requestURI.substring(contextPath.length()+1);
        System.out.println(command);
        
        ActionForward forward = null;
        Action action = null;
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
