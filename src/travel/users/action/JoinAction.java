package travel.users.action;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
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
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, Exception  {
		System.out.println("method in");
		UsersDao dao = UsersDao.getInstance();
		Users users = new Users();
		
		String uploadPath = request.getRealPath("upload");
		int size = 20 * 1024 * 1024; //20MB
	
		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, 
									"utf-8", new DefaultFileRenamePolicy());

	
				if(multi.getFilesystemName("u_img") != null){
					System.out.println("method in");
					String u_img = multi.getFilesystemName("u_img");
					System.out.println(u_img);
					users.setU_img(u_img);

					
					String pattern = u_img.substring(u_img.lastIndexOf(".")+1);
					String headName = u_img.substring(0, u_img.lastIndexOf("."));
					
				
					String imagePath = uploadPath+"\\"+u_img;
					File src = new File(imagePath);
					
					
					String thumImagePath = uploadPath+"\\" +headName+"_small."+pattern;
					File dest = new File(thumImagePath);
					
					if(pattern.equals("jpg") || pattern.equals("gif") || pattern.equals("png")){
						ImageUtil.resize(src, dest, 100, ImageUtil.RATIO);
					}
					
				}else{
					users.setU_img("");
					System.out.println("img안들어감");
				}
				
		System.out.println(multi.getParameter("u_id"));
		users.setU_id(multi.getParameter("u_id"));
		users.setU_name(multi.getParameter("u_name"));
		users.setU_pwd(multi.getParameter("u_pwd"));
		users.setU_birth(multi.getParameter("u_birth"));
		users.setU_sex(multi.getParameter("u_sex"));
		users.setU_address(multi.getParameter("u_address"));
		users.setU_job(multi.getParameter("u_job"));
		users.setU_lang(multi.getParameter("u_lang"));
		users.setU_religion(multi.getParameter("u_religion"));
		users.setU_license(multi.getParameter("u_license"));
		users.setU_img(multi.getParameter("u_img"));
		users.setU_style(request.getParameter("u_style"));
		
		dao.insertUsers(users);
		
		
		System.out.println("JoinAction");
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("home.main");		
		
		return forward;
	}

}
