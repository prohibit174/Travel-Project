package travel.carpool.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.carpool.model.Carpool;
import travel.carpool.model.CarpoolDao;

public class InsertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception  {
		CarpoolDao dao = CarpoolDao.getInstance();
		Carpool carpool = new Carpool();

		carpool.setStart_lati(request.getParameter("start_lati"));
		carpool.setStart_longti(request.getParameter("start_longti"));
		carpool.setDest_lati(request.getParameter("dest_lati"));
		carpool.setDest_longti(request.getParameter("dest_longti"));
		carpool.setC_person(request.getParameter("c_person"));
		System.out.println(request.getParameter("start_lati"));
		
		dao.insertCarpool(carpool);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("Carpool/carpool_list.jsp");
		// 새로운 요청에 의해서 jsp로 이동해야하기 때문에 true 라고 바꾸어준다.
		
		return forward;
	}

}
