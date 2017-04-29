package travel.product.action;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import travel.product.model.ImageUtil;
import travel.product.model.Product;
import travel.product.model.ProductDao;

public class UpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, Exception {
		
		String uploadPath = request.getRealPath("upload");
		int size = 20 * 1024 * 1024; //20MB
		
		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, 
				"utf-8", new DefaultFileRenamePolicy());
		
		String p_num = multi.getParameter("p_num");
		String p_img = multi.getFilesystemName("p_img");
		
		System.out.println(p_num);
		System.out.println(p_img);
		
		ProductDao dao = ProductDao.getInstance();
		Product product = dao.detailProduct(p_num);

		product.setP_num(p_num);

		dao.updateProduct(product);
		
		ActionForward forward = new ActionForward();

		forward.setRedirect(true);
		forward.setPath("ProductDeal/product_updateOk.jsp");
		return forward;
	}

}
