package travel.product.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.product.model.ProductDao;
import travel.product.model.Product_Request;

public class InsertReqAction implements Action {
	
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception  {
		ProductDao dao = ProductDao.getInstance();
		Product_Request proReq = new Product_Request();
		
		proReq.setPr_reqnum(request.getParameter("pr_reqnum"));

		proReq.setU_id(request.getParameter("u_id"));
		proReq.setPr_date(request.getParameter("pr_date"));
		proReq.setPr_ox(request.getParameter("pr_ox"));
		proReq.setPr_place(request.getParameter("pr_place"));
		proReq.setP_num(request.getParameter("p_num"));
		
		
		dao.insertProductReq(proReq);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("ProductDeal/product_requestOk.jsp");
		// 새로운 요청에 의해서 jsp로 이동해야하기 때문에 true 라고 바꾸어준다.
		
		return forward;
	}

}
