package travel.mypage.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.carpool.model.Carpool;
import travel.carpool.model.CarpoolDao;
import travel.carpool.model.Search;

public class CarpoolDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, Exception {
		
		
		System.out.println("ㅜㅜ");
		String num = request.getParameter("c_num");
		System.out.println(num);
		
		
		
		CarpoolDao dao = CarpoolDao.getInstance();
		Carpool carpool = dao.detailCarpool(num);
		System.out.println(carpool.getC_num());
		
		dao.deleteCarpool(carpool);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("carpoolCheck.mypage");
		return forward;
	}

}
