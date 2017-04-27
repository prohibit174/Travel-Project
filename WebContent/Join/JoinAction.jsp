
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="users" class = "travel.users.model.Users"></jsp:useBean>
<jsp:setProperty property="*" name="users"/>

<% 

	//JoinService service = JoinService.getInstance();
	//int re = service.insertJoin(join);
	
	//System.out.print(re);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>입력됨</h3>

</body>
</html>