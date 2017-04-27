package travel.carpool.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.carpool.action.Action;
import travel.carpool.action.ActionForward;
import travel.carpool.action.InsertAction;
import travel.carpool.action.InsertFormAction;
import travel.product.action.ListAction;
import travel.product.action.insertAction;

@WebServlet("*.carpool")
public class CarpoolController extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
   
   
    public CarpoolController() {
        super();
    }

    //��û�� ���õ� �͵��� request�� ������ �ִ�.
    public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       //��û�Ǵ� URL�� �������� Ȯ���غ���. getRequestURI�޼��带 ���ؼ�
       String requestURI = request.getRequestURI();
       //System.out.println(requestURI);
       String contextPath = request.getContextPath();
       String command = requestURI.substring(contextPath.length()+1);
       System.out.println(command);
       
       ActionForward forward = null;
       Action action = null;
       
       //insertForm.do�� ��û�Ǿ�����
       if(command.equals("insertForm.carpool")){
          //insertFormAction()�� ����� : ���� jsp�ΰ��¸޼ҵ�
          action = new InsertFormAction();
          //insert.form.jsp�� ���ڴ�.
          try {
             forward = action.execute(request, response);
         } catch (Exception e) {
            e.printStackTrace();
         }
         //Ŀ�ǵ� ���� ������ �ű⿡ �´� �׼��� ȣ���ϸ� �ȴ�.
       }else if(command.equals("insertAction.carpool")){
           action = new InsertAction();
           try {
             forward = action.execute(request, response);   
          } catch (Exception e) {
             e.printStackTrace();
          }
       }else if(command.equals("listAction.do")){
    	   action = new travel.carpool.action.ListAction();
    	   try{
    		   forward = action.execute(request, response);
    	   } catch(Exception e){
    		   e.printStackTrace();
    	   }
       }
       
       if(forward !=null){
          if(forward.isRedirect()){
             //getPath�� setPath�ߴ� ��θ� ��� �� �� �ִ�.
             response.sendRedirect(forward.getPath());
          } else {
             //Dispathcer : ������û�� ���弱 �� ��û���� jsp�� ���ڴ�.
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