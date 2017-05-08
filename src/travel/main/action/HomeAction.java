package travel.main.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HomeAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, Exception {
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("main.jsp");
		return forward;
	
	}

}
