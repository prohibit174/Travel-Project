package travel.product.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.product.model.Product;
import travel.product.model.ProductDao;

public class DetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String num = request.getParameter("seq");
		   int seq = 1;
		   
		   if (num != null) {
		      seq = Integer.parseInt(num);
		   }
		   
		   ProductDao dao = ProductDao.getInstance();
		   Product product = dao.detailProduct(seq);
			ActionForward forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("ProductDeal/product_detail.jsp");
		return forward;
	}


}
