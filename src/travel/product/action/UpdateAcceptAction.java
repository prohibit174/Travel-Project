package travel.product.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.product.model.Product;
import travel.product.model.ProductDao;
import travel.product.model.Product_Request;

public class UpdateAcceptAction implements Action {
	
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		String p_num=request.getParameter("p_num");
		String pr_ox=request.getParameter("pr_ox");
	
		
		
		ProductDao dao = ProductDao.getInstance();	
		Product_Request proReq=dao.detailProductReq(p_num);
	
		
		System.out.println(request.getParameter("pr_ox"));
		proReq.setPr_ox(request.getParameter("pr_ox"));
		System.out.println(p_num);
		
		dao.updateAccept(proReq);
		List<Product_Request> list=dao.listNotAccept();
		
		ActionForward forward = new ActionForward();
		
		

		forward.setRedirect(true);
		forward.setPath("test.jsp");
		return forward;
		
		
	}

}
