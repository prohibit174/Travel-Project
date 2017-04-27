package travel.carpool.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.carpool.model.Carpool;
import travel.carpool.model.CarpoolDao;

public class ListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, Exception {
		CarpoolDao dao = CarpoolDao.getInstance();
		
		List<Carpool>list = dao.listCarpool();
		request.setAttribute("list", list);
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("Carpool/carpool_list.jsp");
		return forward;
	}

}
