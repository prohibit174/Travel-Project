package travel.mypage.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.users.model.UsersDao;



public class MypageMainAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, Exception {
		
//		String u_id = request.getParameter("u_id");
//		UsersDao dao = UsersDao.getInstance();
//		
//		dao.userDetail(u_id);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		/*forward.setPath("MyPage/mypage_usersUpdateForm.jsp"); : 업데이트 누르면 얘로 가도록.*/
		forward.setPath("MyPage/mypage_usersCheckForm.jsp");
		
		return forward;

	}

}
