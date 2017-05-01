package travel.main.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;

import net.sf.json.JSONArray;

import travel.main.model.LoginDao;
import travel.users.model.Users;


public class LogoutAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, Exception {
		LoginDao dao = LoginDao.getInstance();
		Users dbusers = null;
		Users users = new Users();
		
		users.setU_id(request.getParameter("u_id"));
		System.out.println(request.getParameter("u_id"));
		users.setU_pwd(request.getParameter("u_pwd"));
		
		dbusers = dao.loginCheck(users);
		
		ActionForward forward = new ActionForward();
		
        PrintWriter out = response.getWriter();
//¼º°ø
	         HttpSession session = request.getSession(false);

	           if(session != null){ 
	               session.invalidate(); 

	              }
	          
	           String json = JSONArray.fromObject(dbusers).toString();
	           out.print(json);
	           
	           System.out.println(json);
	           session = request.getSession(true); 
	           
	           session.getAttribute(dbusers.getU_id());
	      session.removeAttribute(dbusers.getU_id());
	           
	     request.setAttribute("users", users);
	         forward.setRedirect(false);
	         forward.setPath("home.main");
	         
	      
	
		 return forward;
	}
}
