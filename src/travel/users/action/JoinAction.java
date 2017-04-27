package travel.users.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.users.model.UsersDao;
import travel.users.model.Users;

public class JoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		UsersDao dao = UsersDao.getInstance();
		Users users = new Users();
		
		users.setU_id(request.getParameter("u_id"));
		users.setU_name(request.getParameter("u_name"));
		users.setU_pwd(request.getParameter("u_pwd"));
		users.setU_birth(request.getParameter("u_birth"));
		/*users.setU_sex(request.getParameter("u_sex"));*/
		users.setU_address(request.getParameter("u_address"));
		users.setU_job(request.getParameter("u_job"));
		users.setU_lang(request.getParameter("u_lang"));
		users.setU_religion(request.getParameter("u_religion"));
		/*users.setU_license(request.getParameter("u_license"));*/
		users.setU_img(request.getParameter("u_img"));
/*		users.setTs_name(request.getParameter("ts_name"));
*/		
		dao.insertUsers(users);
		
		System.out.println("JoinAction");
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/Join/JoinAction.jsp");		
		
		return forward;
	}

}
