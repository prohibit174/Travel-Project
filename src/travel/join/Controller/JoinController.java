package travel.join.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.join.Action.Action;
import travel.join.Action.ActionForward;
import travel.join.Action.JoinAction;


@WebServlet("*.join")
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public JoinController() {
        super();
        
    }

	public void joinProcess(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		String requestURI = request.getRequestURI();
		System.out.println(requestURI);
		
	/*	String path = request.getContextPath();
		//travelProject
*/		String contextPath = request.getContextPath();
    	//getContextPath를 통해서 /MVC_project라는 컨텍스트 경로를 가져옴.
    	System.out.println(contextPath);
    	String command = requestURI.substring(contextPath.length()+1);
    	/*전체 경로에서 context경로의 뒤에 있는 /까지 포함하기위해서 +1을 넣어줌.
    	context의 길이만큼 자르고 +1을 하면 /부터 t까지 잘림.
    	+1안하면 /MVC_project   /isert.do가 됨
    	/MVC_project를 잘라냄.*/
    	System.out.println(command);
    	//잘라내고 남은 필요한 url만 잘라왔음.
    	
    	ActionForward forward= null;
    	Action action= null;
    	
    	if(command.equals("Join/JoinAction.join")){
    		//insert_form.jsp에서 submit하면 insertForm.do로 향하게되고, 이 컨트롤러는 .do하면 실행되게됨.
    		//해당하는 action을 호출.
    		action = new JoinAction();
    		//action = new InsertFormAction();
    		try {
    			forward = action.execute(request, response);
        		//이 forward를 통해서 redirect안한다, jsp로 가겠다는 내용을 가지고있음.
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		joinProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		joinProcess(request, response);
	}

}
