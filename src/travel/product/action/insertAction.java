package travel.product.action;


import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.product.model.ImageUtil;
import travel.product.model.Product;
import travel.product.model.ProductDao;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class insertAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception  {
		ProductDao dao = ProductDao.getInstance();
		Product product = new Product();
		
		//파일 업로드 (경로, 크기, 인코딩방식,중첩정책)
		//전체경로
		String uploadPath = request.getRealPath("upload");
		int size = 20 * 1024 * 1024; //20MB
	
		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, 
									"utf-8", new DefaultFileRenamePolicy());
		//파일 업로드
				if(multi.getFilesystemName("p_img") != null){
					System.out.println("method in");
					String p_img = multi.getFilesystemName("p_img");
					System.out.println(p_img);
					product.setP_img(p_img);

					
					//썸네일 이미지(jpg, gif) aaa.gif -> aaa_small.gif
					String pattern = p_img.substring(p_img.lastIndexOf(".")+1);
					String headName = p_img.substring(0, p_img.lastIndexOf("."));
					
					//원본 File객체
					String imagePath = uploadPath+"\\"+p_img;
					File src = new File(imagePath);
					
					//썸네일이미지 -> file객체
					String thumImagePath = uploadPath+"\\" +headName+"_small."+pattern;
					File dest = new File(thumImagePath);
					
					if(pattern.equals("jpg") || pattern.equals("gif") || pattern.equals("png")){
						ImageUtil.resize(src, dest, 100, ImageUtil.RATIO);
					}
					
				}else{
					product.setP_img("");
					System.out.println("img안들어감");
				}
				
				
		
		product.setP_num(multi.getParameter("p_num"));
		product.setU_id(multi.getParameter("u_id"));
		product.setP_detail(multi.getParameter("p_detail"));
		product.setP_price(multi.getParameter("p_price"));	
		product.setP_amount(multi.getParameter("p_amount"));
		product.setP_term(multi.getParameter("p_term"));
		product.setP_ox(multi.getParameter("p_ox"));

		
		dao.insertProduct(product);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("ProductDeal/product_registerOk.jsp");
	
		
		return forward;
	}

}
