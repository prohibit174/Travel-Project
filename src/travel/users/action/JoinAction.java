package travel.users.action;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.users.model.UsersDao;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import travel.product.model.ImageUtil;
import travel.users.model.Users;

public class JoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("method in");
		UsersDao dao = UsersDao.getInstance();
		Users users = new Users();
		
		String uploadPath = request.getRealPath("upload");
		int size = 20 * 1024 * 1024; //20MB
	
		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, 
									"utf-8", new DefaultFileRenamePolicy());
		//���� ���ε�
				if(multi.getFilesystemName("p_img") != null){
					System.out.println("method in");
					String p_img = multi.getFilesystemName("p_img");
					System.out.println(p_img);
					users.setU_img(p_img);

					
					//����� �̹���(jpg, gif) aaa.gif -> aaa_small.gif
					String pattern = p_img.substring(p_img.lastIndexOf(".")+1);
					String headName = p_img.substring(0, p_img.lastIndexOf("."));
					
					//���� File��ü
					String imagePath = uploadPath+"\\"+p_img;
					File src = new File(imagePath);
					
					//������̹��� -> file��ü
					String thumImagePath = uploadPath+"\\" +headName+"_small."+pattern;
					File dest = new File(thumImagePath);
					
					if(pattern.equals("jpg") || pattern.equals("gif") || pattern.equals("png")){
						ImageUtil.resize(src, dest, 100, ImageUtil.RATIO);
					}
					
				}else{
					users.setU_img("");
					System.out.println("img�ȵ�");
				}
				
		
		users.setU_id(multi.getParameter("u_id"));
		users.setU_name(multi.getParameter("u_name"));
		users.setU_pwd(multi.getParameter("u_pwd"));
		users.setU_birth(multi.getParameter("u_birth"));
		/*users.setU_sex(request.getParameter("u_sex"));*/
		users.setU_address(multi.getParameter("u_address"));
		users.setU_job(multi.getParameter("u_job"));
		users.setU_lang(multi.getParameter("u_lang"));
		users.setU_religion(multi.getParameter("u_religion"));
		/*users.setU_license(request.getParameter("u_license"));*/
		users.setU_img(multi.getParameter("u_img"));
/*		users.setTs_name(request.getParameter("ts_name"));
*/		
		dao.insertUsers(users);
		
		System.out.println("JoinAction");
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/Join/JoinAction.jsp");		
		
		return forward;
	}

}
