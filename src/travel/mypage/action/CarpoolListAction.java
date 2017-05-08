package travel.mypage.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import travel.mypage.action.ActionForward;
import travel.carpool.model.Carpool;
import travel.carpool.model.CarpoolDao;
import travel.carpool.model.Carpool_Request;


public class CarpoolListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, Exception {
		CarpoolDao dao = CarpoolDao.getInstance();

		
		HttpSession session = request.getSession();
		String u_id = session.getAttribute("member_id").toString();
		
		List<Carpool> list = dao.myMakeCarpool(u_id);
		request.setAttribute("list", list);
		
		List<Carpool_Request> cr_list = dao.myRequestCarpool(u_id);
		request.setAttribute("cr_list", cr_list);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("MyPage/mypage_carpoolCheck.jsp");
		return forward;
	}

}
