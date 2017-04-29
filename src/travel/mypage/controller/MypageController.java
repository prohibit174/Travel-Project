package travel.mypage.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.mypage.action.Action;
import travel.mypage.action.ActionForward;
import travel.mypage.action.CarpoolDeleteAction;
import travel.mypage.action.CarpoolListAction;


@WebServlet("*.mypage")
public class MypageController extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
   
   
    public MypageController() {
        super();
    }

    //占쏙옙청占쏙옙 占쏙옙占시듸옙 占싶듸옙占쏙옙 request占쏙옙 占쏙옙占쏙옙占쏙옙 占쌍댐옙.
    public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       //占쏙옙청占실댐옙 URL占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 확占쏙옙占쌔븝옙占쏙옙. getRequestURI占쌨쇽옙占썲를 占쏙옙占쌔쇽옙
       String requestURI = request.getRequestURI();
       //System.out.println(requestURI);
       String contextPath = request.getContextPath();
       String command = requestURI.substring(contextPath.length()+1);
       System.out.println(command);
       
       ActionForward forward = null;
       Action action = null;
       

       if(command.equals("carpoolCheck.mypage")){
          action = new CarpoolListAction();
          try {
             forward = action.execute(request, response);
         } catch (Exception e) {
            e.printStackTrace();
         }
       } else if (command.equals("carpoolDelete.mypage")) {
    	   action = new CarpoolDeleteAction();
           try {
               forward = action.execute(request, response);
           } catch (Exception e) {
              e.printStackTrace();
           }
	}
       
       if(forward !=null){
          if(forward.isRedirect()){
             response.sendRedirect(forward.getPath());
          } else {
              RequestDispatcher dispatcher = 
                    request.getRequestDispatcher(forward.getPath());
              dispatcher.forward(request, response);
          }
       }
       
    }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doProcess(request, response);
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doProcess(request, response);
   }

}