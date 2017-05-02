<%@page import="travel.accompany.model.Accompany"%>
<%@page import="java.util.List"%>
<%@page import="travel.accompany.model.AccompanyDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<html>
<head>
<script>
<%
	request.setCharacterEncoding("utf-8");
    AccompanyDao dao = AccompanyDao.getInstance();
	
   List<Accompany> list = dao.listProduct();
   request.setAttribute("list", list);
%>
</script>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
  <style>
       #map {
        height: 400px;
        width: 50%;
       }
    </style>
</head>
<%@include file="../header.jsp" %>
<body>
 <h3>My Google Maps Demo</h3>
    <div id="map"></div>
    <script>
    
      function initMap() {
        var uluru = {lat: -25.363, lng: 131.044};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: uluru
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnrWQ2SHvedNrvdozheYo32pHwCbuvPgs&callback=initMap">
    </script>

</body>
</html>