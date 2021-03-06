package travel.product.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.product.model.Product;
import travel.product.model.ProductDao;

public class deleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, Exception {
		String p_num = request.getParameter("p_num");
		System.out.println(p_num);
		ProductDao dao = ProductDao.getInstance();
		Product product = dao.detailProduct(p_num);

		dao.deleteProduct(product);
		
		ActionForward forward = new ActionForward();

		forward.setRedirect(false);
		forward.setPath("ProductDeal/product_delete.jsp");
		return forward;
	}

}
