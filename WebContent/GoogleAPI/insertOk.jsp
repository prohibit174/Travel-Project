<%@page import="kosta.model.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	request.setCharacterEncoding("UTF-8");
    %>
    
    <jsp:useBean id="board" class = "kosta.model.Board"></jsp:useBean>
    <jsp:setProperty property="*" name="board"/>
    <!-- 보드를 가져온다. -->
    <!-- java에 데이터가 들어간다.  -->
    	
    <% 
    	BoardService service = BoardService.getInstance();
    	int re = service.iinsertBoardService(board);
    	
    	if(re > 0){	//데이터가 잘 들어왔으면
    		response.sendRedirect("list.jsp");
    		//list.jsp로 가고
    	}else{	//아니면
    		response.sendRedirect("insertform.jsp");
    		//insertform.jsp로 가라.
    	}
    %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>