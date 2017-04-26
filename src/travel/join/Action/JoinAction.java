package travel.join.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.join.Model.Join;
import travel.join.Model.JoinDao;

public class JoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		JoinDao dao = JoinDao.getInstance();
		Join join = new Join();
		
		join.setU_id(request.getParameter("u_id"));
		join.setU_name(request.getParameter("u_name"));
		join.setU_pwd(request.getParameter("u_pwd"));
		join.setU_birth(request.getParameter("u_birth"));
		/*join.setU_sex(request.getParameter("u_sex"));*/
		join.setU_address(request.getParameter("u_address"));
		join.setU_job(request.getParameter("u_job"));
		join.setU_lang(request.getParameter("u_lang"));
		join.setU_religion(request.getParameter("u_religion"));
		join.setU_license(request.getParameter("u_license"));
		join.setU_img(request.getParameter("u_img"));
/*		join.setTs_name(request.getParameter("ts_name"));
*/		
		dao.insertJoin(join);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/joinAction.jsp");
		
		System.out.println("joinAction");
		
		return forward;
	}

}
