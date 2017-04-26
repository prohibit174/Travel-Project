package travel.product.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InsertFormAction implements Action {

		public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
			ActionForward forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/ProductDeal/product_register2.jsp");
			
			return forward;
		}
	

}
