package travel.product.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.product.model.Product;
import travel.product.model.ProductDao;
import travel.product.model.Product_Request;

public class UpdateAcceptAction implements Action {
	
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		String p_num=request.getParameter("p_num");
		
		
		ProductDao dao = ProductDao.getInstance();	
		Product_Request proReq=dao.detailProductReq(p_num);
		
		proReq.setP_num(p_num);
		
		dao.updateAccept(proReq);
		
		ActionForward forward = new ActionForward();
		
		request.setAttribute("proReq", proReq);

		forward.setRedirect(true);
		forward.setPath("MyPage/mypage_productRequestList.jsp");
		return forward;
		
		
	}

}
