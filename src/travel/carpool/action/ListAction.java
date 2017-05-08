package travel.carpool.action;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import travel.carpool.model.Carpool;
import travel.carpool.model.CarpoolDao;
import travel.carpool.model.ListModel;
import travel.carpool.model.Search;

public class ListAction implements Action {
	private static final int PAGE_SIZE = 10;
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, Exception {

		   String pageNum = request.getParameter("pageNum");
		   if(pageNum == null){
		      pageNum = "1";
		   }
		   
		   int requestPage = Integer.parseInt(pageNum);
		   System.out.println(requestPage);
		ActionForward forward = new ActionForward();
		ListModel listModel = carpoolListPaging(request, requestPage);
		request.setAttribute("listModel", listModel);
		forward.setRedirect(false);
		forward.setPath("Carpool/carpool_list.jsp");
		return forward;
	}
	
	public ListModel carpoolListPaging(HttpServletRequest request, int requestPage) throws Exception{
		CarpoolDao dao = CarpoolDao.getInstance();
		Search search = new Search();
		HttpSession session_list = request.getSession();

		if(request.getParameter("temp") != null){
			session_list.removeAttribute("search");
		}
		
		if(request.getParameterValues("carpool_search") != null){
		search.setCarpool_search(request.getParameterValues("carpool_search"));
		search.setSearchKey("%"+request.getParameter("searchKey")+"%");
		session_list.setAttribute("search", search);
		}else if((Search)session_list.getAttribute("search") != null){
			search = (Search)session_list.getAttribute("search");
		}
		
		int totalCount = dao.countCarpool(search);
		int totalPageCount = totalCount/PAGE_SIZE;
		
		if(totalCount%PAGE_SIZE > 0){
			totalPageCount++;
		}
		
		int startPage = requestPage - (requestPage - 1) % 5;
		int endPage = startPage + 4;
		if(endPage > totalPageCount){
			endPage = totalPageCount;
		}
		
		int startRow = (requestPage - 1) * PAGE_SIZE;
		List<Carpool> list = dao.listCarpool(startRow, search);
		
		return new ListModel(list, requestPage, totalCount, startPage, endPage);
		
	}
}
	
