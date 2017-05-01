package travel.users.action;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.users.model.UsersDao;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import travel.users.action.ActionForward;
import travel.users.model.ImageUtil;
import travel.users.model.Users;

public class JoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("method in");
		UsersDao dao = UsersDao.getInstance();
		Users users = new Users();
		
	
		/*
		String uploadPath = request.getRealPath("upload");
		int size = 20 * 1024 * 1024; //20MB
	
		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, 
									"utf-8", new DefaultFileRenamePolicy());

		//���� ���ε�
				if(multi.getFilesystemName("u_img") != null){
					System.out.println("method in");
					String u_img = multi.getFilesystemName("u_img");
					System.out.println(u_img);
					users.setU_img(u_img);

					
					//����� �̹���(jpg, gif) aaa.gif -> aaa_small.gif
					String pattern = u_img.substring(u_img.lastIndexOf(".")+1);
					String headName = u_img.substring(0, u_img.lastIndexOf("."));
					
					//���� File��ü
					String imagePath = uploadPath+"\\"+u_img;
					File src = new File(imagePath);
					
					//������̹��� -> file��ü
					String thumImagePath = uploadPath+"\\" +headName+"_small."+pattern;
					File dest = new File(thumImagePath);
					
					if(pattern.equals("jpg") || pattern.equals("gif") || pattern.equals("png")){
						ImageUtil.resize(src, dest, 100, ImageUtil.RATIO);
					}
					
				}else{
					users.setU_img("");
					System.out.println("img안들어감");
				}
				*/
		
		users.setU_id(request.getParameter("u_id"));
		users.setU_name(request.getParameter("u_name"));
		users.setU_pwd(request.getParameter("u_pwd"));
		users.setU_birth(request.getParameter("u_birth"));
		/*users.setU_sex(request.getParameter("u_sex"));*/
		users.setU_address(request.getParameter("u_address"));
		users.setU_job(request.getParameter("u_job"));
		users.setU_lang(request.getParameter("u_lang"));
		users.setU_religion(request.getParameter("u_religion"));
		/*users.setU_license(request.getParameter("u_license"));*/
		users.setU_img(request.getParameter("u_img"));
/*		users.setTs_name(request.getParameter("ts_name"));
*/		
		dao.insertUsers(users);
		
		System.out.println("JoinAction");
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("JoinAction.jsp");		
		
		return forward;
	}

}
