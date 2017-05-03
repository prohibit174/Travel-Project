<%@page import="travel.accompany.model.Accompany"%>
<%@page import="java.util.List"%>
<%@page import="travel.accompany.model.AccompanyDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<html>
<head>
<script>
<%
	request.setCharacterEncoding("utf-8");
    AccompanyDao dao = AccompanyDao.getInstance();
	
   List<Accompany> list = dao.selectUserRoute("0");
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
    
    <script type="text/javascript">
    var index=0;
    var tp_num=[];
    var region=[];
    var longi=[];
    var lati=[];
    var id=[];
    var travelDate=[];
    var map;
    var marker=[];
    var latLngList=[];
    
    travelDate=String(travelDate);
    </script>
    <c:forEach var="accompany" items="${list}">
    
                  <c:set var="tp_num" value="${accompany.tp_num}"></c:set>
                  <c:set var="cor_region" value="${accompany.cor_region}"></c:set>
                  <c:set var="cor_longi" value="${accompany.cor_longi}"></c:set>
                  <c:set var="cor_lati" value="${accompany.cor_lati}"></c:set>
                  <c:set var="cor_u_id" value="${accompany.u_id}"></c:set>
                  <c:set var="tp_date" value="${accompany.tp_date}"></c:set>
                  <script type="text/javascript">
 				
                    tp_num[index]="${tp_num}";
 					region[index]="${cor_region}";
 					longi[index]="${cor_longi}";
 					lati[index]="${cor_lati}";
 					id[index]="${cor_u_id}";
 					
 				 	var temp;
 					temp=String("${tp_date}");
 				 	travelDate[index]=temp;

 	//alert('tp_num : '+${tp_num}+' / ' +'cor_region : '+${cor_region});
 	index++;
 	</script>
 </c:forEach>
    
    <script>
      function initMap() {
        var paris = {lat: 48.856667, lng: 2.350833};
        map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: paris
        });
        for(i=0;i<index;i++)
        	{
        		 var latlng={lat: Number(lati[i]), lng: Number(longi[i])};
        		 latLngList.push(latlng);
        		 alert('latlng.lat : '+ latlng.lat+ ' / '+ 'longi[i] : '+longi[i]); 
        		 marker[i] = new google.maps.Marker({  
                 position: latlng,
                 map: map,
                 title: region[i]
               });
        		 marker[i].setMap(map);
        		 createLine(latLngList, map);
        	}

      	  function createLine(latLngList, map){ 
            var movingPath = new google.maps.Polyline({
             path: latLngList,
             geodesic: true,
             strokeColor: '#000000',
             strokeOpacity: 10.0,
             strokeWeight: 1
           });
            if(latLngList.length>1){
            movingPath.setMap(map);
            }
         }
        
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnrWQ2SHvedNrvdozheYo32pHwCbuvPgs&callback=initMap">
    </script>
 
</body>
</html>