package travel.main.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class LoginFormAction implements Action {

	@Override
	public travel.main.action.ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, Exception {

		travel.main.action.ActionForward forward = new travel.main.action.ActionForward();
		forward.setRedirect(false);
		forward.setPath("login.jsp");
		
		return forward;


	}

}
