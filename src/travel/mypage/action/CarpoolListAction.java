package travel.mypage.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.mypage.action.ActionForward;
import travel.carpool.model.Carpool;
import travel.carpool.model.CarpoolDao;
import travel.carpool.model.Search;


public class CarpoolListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, Exception {
		CarpoolDao dao = CarpoolDao.getInstance();
		Search search = new Search();
		search.setCarpool_search(request.getParameterValues("carpool_search"));
		search.setSearchKey("%"+request.getParameter("searchKey")+"%");

		
		List<Carpool> list = dao.listCarpool(search);
		request.setAttribute("list", list);
		
		ActionForward forward = new ActionForward();
			
		
		forward.setRedirect(false);
		forward.setPath("MyPage/mypage_carpoolCheck.jsp");
		return forward;
	}

}
