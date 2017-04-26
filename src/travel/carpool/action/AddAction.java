package travel.carpool.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.carpool.model.Carpool;
import travel.carpool.model.CarpoolDao;

public class AddAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, Exception {
		CarpoolDao dao = CarpoolDao.getInstance();
		Carpool carpool = new Carpool();
		carpool.setC_person(request.getParameter("c_person"));
		carpool.setStart_lati(request.getParameter("start_lati"));
		System.out.println(request.getParameter("start_lati"));
		carpool.setStart_longti(request.getParameter("start_longti"));
		carpool.setDest_lati(request.getParameter("dest_lati"));
		carpool.setDest_longti(request.getParameter("dest_longti"));
		
		dao.insertCarpool(carpool);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("listAction.do");
		
		return forward;
	}

}
