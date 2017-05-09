package travel.carpool.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import travel.carpool.model.Carpool;
import travel.carpool.model.CarpoolDao;
import travel.users.model.Users;
import travel.users.model.UsersDao;

public class InsertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception  {
		CarpoolDao dao = CarpoolDao.getInstance();
		UsersDao userdao = UsersDao.getInstance();
		
		Carpool carpool = new Carpool();
		HttpSession session = request.getSession();
		
		int person = Integer.parseInt(request.getParameter("c_person"));
		String u_id = (String)session.getAttribute("member_id");
		
		Users user = userdao.userDetail(u_id);
		
		carpool.setC_num(dao.carpool_num() + 1);
		carpool.setU_id(u_id);
		carpool.setU_img(user.getU_img());
		System.out.println((String)session.getAttribute("member_id"));
		carpool.setStart_lati(request.getParameter("start_lati"));
		carpool.setStart_longti(request.getParameter("start_longti"));
		carpool.setDest_lati(request.getParameter("dest_lati"));
		carpool.setDest_longti(request.getParameter("dest_longti"));
		carpool.setC_person(person);
		request.setAttribute("user", user);
		dao.insertCarpool(carpool);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("list.carpool");

		
		return forward;
	}

}
