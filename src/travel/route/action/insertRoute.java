package travel.route.action;


import java.io.File;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import travel.route.model.Route;
import travel.route.model.RouteDao;


public class insertRoute implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception  {
		RouteDao dao = RouteDao.getInstance();
		Route route = new Route();
		
		//JSONArray jsonArray=new JSONArray();
		
		//for(int i=0;i<jsonArray.size())
		//jsonArray.add(index, value);
		
		
		request.getParameter("json");
		
		route.setCor_region(request.getParameter("json"));
		Random r=new Random();
		int random=r.nextInt(100000000);
		route.setTp_num(random+"");
		
		System.out.println("json : "+request.getParameter("json"));
		route.setU_id("ID_1");
		route.setTp_date("2017-04-28");
		
		
		//System.out.println("title : "+request.getParameter("title"));

		dao.insertRoute(route);
		
		//ActionForward forward = new ActionForward();
		//forward.setRedirect(true);
		//forward.setPath("ProductDeal/product_registerOk.jsp");
	
		
		//return forward;
		return null;
	}

}
