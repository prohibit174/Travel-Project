package travel.product.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.product.model.Product;
import travel.product.model.ProductDao;
import travel.product.model.Product_Search;

public class ListAction implements Action {
	
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, Exception {
		ProductDao dao = ProductDao.getInstance();
		
		Product_Search proSearch =new Product_Search();
		proSearch.setProduct_search(request.getParameterValues("product_search"));
		proSearch.setSearchKey("%"+request.getParameter("searchKey")+"%");
		
		
		
		List<Product> list = dao.listProduct(proSearch);
		request.setAttribute("list", list);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("ProductDeal/product_list.jsp");
		
		return forward;
	}

}


