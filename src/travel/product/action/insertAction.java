package travel.product.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.product.model.Product;
import travel.product.model.ProductDao;

public class insertAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception  {
		ProductDao dao = ProductDao.getInstance();
		Product product = new Product();
		product.setP_num(Integer.parseInt(request.getParameter("p_num")));
		product.setU_id(request.getParameter("u_id"));
		product.setP_img(request.getParameter("p_img"));
		product.setP_detail(request.getParameter("p_detail"));
		product.setP_price(Integer.parseInt(request.getParameter("p_price")));
		product.setP_term(request.getParameter("p_term"));
		product.setP_ox(request.getParameter("p_ox"));
		
		dao.insertProduct(product);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("/ProductDeal/product_registerOk.jsp");
	
		
		return forward;
	}

}
