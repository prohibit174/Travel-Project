package travel.mypage.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.carpool.model.Carpool;
import travel.carpool.model.CarpoolDao;

public class CarpoolUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, Exception {
		
		String c_num = request.getParameter("c_num");

		CarpoolDao dao = CarpoolDao.getInstance();
		Carpool carpool = dao.detailCarpool(c_num);
		System.out.println(carpool.getC_num());
		
		
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("MyPage/mypage_carpoolUpdateForm.jsp");
		return forward;
	}

}
