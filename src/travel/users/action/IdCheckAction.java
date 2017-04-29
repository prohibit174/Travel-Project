package travel.users.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.users.model.UsersDao;

public class IdCheckAction implements Action {
	
	/*public static int checkId(String string){
		
		HttpServletRequest request = null;
		UsersDao dao = UsersDao.getInstance();
		
		string = request.getParameter("u_id");
		
		int re = dao.checkId(string);
		
		System.out.println(re);
		return re;
	}
	*/
	

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String string = request.getParameter("u_id");
		
		System.out.println(string);

		UsersDao dao = UsersDao.getInstance();
		int re = dao.checkId(string);
		//여기에 1인지 0인지 숫자가 들어갈겨.
		
		System.out.println(re);
	
		request.setAttribute("re", re);
		//re라는 이름으로 re값을 넣어서 보내줄거임.
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(false); 
		forward.setPath("/Join/IdCheck.jsp");
		//여기로! jsp에서는 request.getAttribute("re")라고 해서 re값을 받음.
		//http://localhost:8081/TravelProject/IdCheckAction.users?u_id=테스트값 해보면 1이나 0이 뜸.
		//jsp에서 그 값을 받아서 ajax의 data로 던져줌.
		return forward;
		
	}
	


}
