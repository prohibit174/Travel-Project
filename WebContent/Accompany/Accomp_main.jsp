<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="java.util.HashMap"%>
<%@page import="travel.accompany.model.Accompany"%>
<%@page import="travel.accompany.model.AccompanyDao"%>
<%@page import="travel.accompany.model.Route"%>
<%@ page import="java.util.*" %>
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
	//get user's route whose ID is "0"
   Route route=new Route();
   route.setU_id("0");
   List<Accompany> list = dao.getUserRoute(route);
   request.setAttribute("list", list);
 	//get user's Info whose ID is "0"
 	
  List<Accompany> allAccompanyList=dao.getUserRoute(route);
  allAccompanyList.clear();

    System.out.println("allAccompanyList.size : " +allAccompanyList.size());

  for(int i=0;i< list.size() ;i++)
	{
	  
	  List<Accompany>userRoutesInfo  = dao.getUserInfo(list.get(i).getU_id());//get user's route whose id is "0"
	  //get routes of logined user.
	  //userRoutesInfo[0] contains 5.1 Nice, id, trip_style and so on...
	  //userRoutesInfo[1] contains 5.2 Nice, id, trip_style and so on...
	  //userRoutesInfo[2] contains 5.3 Swiss, id, trip_style and so on...
	  //userRoutesInfo[3] contains 5.4 Swiss, id, trip_style and so on...
	  String name=userRoutesInfo.get(i).getU_name();
	  String region=userRoutesInfo.get(i).getCor_region();
	  String date=userRoutesInfo.get(i).getTp_date();
	  System.out.println(date+"의 "+region);
	    System.out.println();

	  //List<Accompany> temp=dao.findAccompany(userRoutesInfo.get(i));
	  List<Accompany> temp=dao.getAccompanies(userRoutesInfo.get(i));
	  allAccompanyList.addAll(temp);
	  
	}
  System.out.println();
  System.out.println("allAccompanyList.size : " +allAccompanyList.size());
 	 for(int i=0;i< allAccompanyList.size() ;i++)
	{ String name=allAccompanyList.get(i).getU_name();
	  String region=allAccompanyList.get(i).getCor_region();
	  String date=allAccompanyList.get(i).getTp_date();
	  String lati=allAccompanyList.get(i).getCor_lati();
	  String longi=allAccompanyList.get(i).getCor_longi();
	  System.out.println(date+"의 "+region+"에서의 동행은 "+name+"입니다"+"lat/long : "+lati+" / "+longi);
	}
 	   request.setAttribute("allAccompanyList", allAccompanyList);
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
    var markerIndex=0;
    var latLngList=[];
    
    
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
 				 	travelDate[index]=temp.substr(2,8);
 				 	
 	index++;
 	</script>
 	
 </c:forEach>
 
<script type="text/javascript">
    var accom_index=0;
    var accom_tp_num=[];
    var accom_region=[];
    var accom_longi=[];
    var accom_lati=[];
    var accom_id=[];
    var accom_tp_date=[];
    
    var accom_name=[];
    var accom_birth=[];
    var accom_address=[];
    var accom_job=[];
    var accom_lang=[];
    var accom_img=[];
    var accom_religion=[];
    var accom_license=[];
    var accom_ts_id=[];
    var accom_sex=[];
       
    var infowindow=[];
    
    </script>
    <c:forEach var="accompany" items="${allAccompanyList}">
    
                  <c:set var="tp_num" value="${accompany.tp_num}"></c:set>
                  <c:set var="cor_region" value="${accompany.cor_region}"></c:set>
                  <c:set var="cor_longi" value="${accompany.cor_longi}"></c:set>
                  <c:set var="cor_lati" value="${accompany.cor_lati}"></c:set>
                  <c:set var="cor_u_id" value="${accompany.u_id}"></c:set>
                  <c:set var="tp_date" value="${accompany.tp_date}"></c:set>
                  
                  <c:set var="u_name" value="${accompany.u_name}"></c:set>
                  <c:set var="u_birth" value="${accompany.u_birth}"></c:set>
                  <c:set var="u_address" value="${accompany.u_address}"></c:set>
                  <c:set var="u_job" value="${accompany.u_job}"></c:set>
                  <c:set var="u_lang" value="${accompany.u_lang}"></c:set>
                  <c:set var="u_img" value="${accompany.u_img}"></c:set>
                  <c:set var="u_religion" value="${accompany.u_religion}"></c:set>
                  <c:set var="u_license" value="${accompany.u_license}"></c:set>
                  <c:set var="ts_id" value="${accompany.ts_id}"></c:set>
                  <c:set var="u_sex" value="${accompany.u_sex}"></c:set>
                  
                  
                  
                  <script type="text/javascript">
 				
                  accom_tp_num[accom_index]="${tp_num}";
                  accom_region[accom_index]="${cor_region}";
                  accom_longi[accom_index]="${cor_longi}";
                  accom_lati[accom_index]="${cor_lati}";
                  accom_id[accom_index]="${cor_u_id}";
                  
                  accom_name[accom_index]="${u_name}";
                  accom_birth[accom_index]="${u_birth}";
                  accom_address[accom_index]="${u_address}";
                  accom_job[accom_index]="${u_job}";
                  accom_lang[accom_index]="${u_lang}";
                  accom_img[accom_index]="${u_img}";
                  accom_religion[accom_index]="${u_religion}";
                  accom_license[accom_index]="${u_license}";
                  accom_ts_id[accom_index]="${ts_id}";
                  accom_sex[accom_index]="${u_sex}";
                  
           
                  

 				 	var accom_temp;
 				 	accom_temp=String("${tp_date}");
 				 	accom_tp_date[accom_index]=accom_temp.substr(2,8);
 				 	
 				 	accom_index++;
 	</script>
 </c:forEach>
    
    <script>
    
      function initMap() {
        var paris = {lat: 48.856667, lng: 2.350833};
        map = new google.maps.Map(document.getElementById('map'), {
          zoom: 5,
          center: paris
        });
        
        function showRightAccom(leftIndex, markerIndex){
        	alert('hi');
        	var index=leftIndex-1;
        	var lati=accom_lati[leftIndex]; // lati value to find 
        	var longi=accom_longi[leftIndex];// langi value to find
        	for(;index<=0;index--)
        		{
        			if(accom_lati[index]==lati && accom_longi[index]==longi)
        				{
        				
        				 var tmpdate=new Date();
        	     		 thisYear=tmpdate.getFullYear();
        	     		 var age=parseInt(thisYear)-parseInt(accom_birth[j].substr(0,4));
        	     		 
        	     		 var gender;
        	     		 if( accom_sex[index]=='man')
        	     			 gender="<img src='man.png' width='10' height='10'>"
        	     			 else
        	     				gender="<img src='woman.png' width='10' height='10'>"
        	     				
        					var newContent=
            	    		     gender
             	    		     +accom_name[index]+'&nbsp'
             	    		  	 +'<br>'
             	    		     +'<img src="cal.png" width="10" height="10">'
                 	    		 +accom_tp_date[index]+'<br>'
                 	    	     +'<img src="age.png" width="10" height="10">'
                 	    		 +age+'살'+'<br>'
                 	    		 +'<button onclick="showLeftAccom("'+index+','+markerIndex+")"+'style="font-size:8px">&lt</button>'
                 	    		 +'<button onclick="myFunction()" style="font-size:8px">2</button>'
                 	    		 +'<button onclick="showRightAccom()" style="font-size:8px">&gt</button>'
           	    				  
        					
           	    		infowindow[markerIndex].content=newContent;
        					
        					
        				}
        		}
        	}
        
        function containsLatlng(latlng){
        	if(latLngList==null)
				return false; 
        	
         	for(x=0;x<latLngList.length;x++)
        		{	
         			if(latlng.lat==latLngList[x].lat &&latlng.lng==latLngList[x].lng)
         			{
         				return true; 
         			}
        		}
        	return false; 
        }
        
        for(i=0;i< index  ;i++)
        	{
        		
        		 var latlng={lat: Number(lati[i]), lng: Number(longi[i])};
        		 if(containsLatlng(latlng)==false)//if the lat,lng which want to add marker already exist in latLnglist, dont add a marker
        		 {	
        			 latLngList.push(latlng);
        		 
        		 /* alert('latlng.lat : '+ latlng.lat+ ' / '+ 'longi[i] : '+longi[i]); */ 
        		 marker[markerIndex] = new google.maps.Marker({  
                 position: latlng,
                 map: map,
                 title: region[markerIndex],
                 hasInfoWindow : false// one marker, one InfoWindow. So If a marker has window, it is prohibited to make Infowindow
        		/*  date : travelDate[i] */
               });
        		 marker[markerIndex].setMap(map);
        		 for(j=0;j<accom_index ;j++)
      	    	{
        			 // alert(latlng.date);
        			 // alert(accom_tp_date[j]);
        	     	 if(latlng.lat==accom_lati[j] && latlng.lng==accom_longi[j] && marker[markerIndex].hasInfoWindow==false)
        	    	 {
        	     		 
        	     		 var tmpdate=new Date();
        	     		 thisYear=tmpdate.getFullYear();
        	     		 var age=parseInt(thisYear)-parseInt(accom_birth[j].substr(0,4));
        	     		 
        	     		 var gender;
        	     		 if( accom_sex[j]=='man')
        	     			 gender="<img src='man.png' width='10' height='10'>"
        	     			 else
        	     				gender="<img src='woman.png' width='10' height='10'>"
        	     			 
        	    		 infowindow[markerIndex] = new google.maps.InfoWindow({
     	    		    content: 
     	    		     gender
     	    		     +accom_name[j]+'&nbsp'
     	    		   +'<br>'
     	    		    +'<img src="cal.png" width="10" height="10">'
         	    		 +accom_tp_date[j]+'<br>'
         	    	     +'<img src="age.png" width="10" height="10">'
         	    		 +age+'살'+'<br>'
         	    		 +'<button onclick="showLeftAccom("'+j+','+markerIndex+")"+'style="font-size:8px">&lt</button>'
         	    		 +'<button onclick="myFunction()" style="font-size:8px">2</button>'
         	    		 +'<button onclick="showRightAccom(4,0)", style="font-size:8px">&gt</button>'
   	    				  });
           			  infowindow[markerIndex].open(map, marker[markerIndex]);
           				marker[markerIndex].hasInfoWindow=true;
        	    	 }
      	    	} 
        		
        		 createLine(latLngList, map);
        		 markerIndex++;
	     		 /* alert(parseInt(thisYear)-parseInt(accom_tp_date[j].substr(0,4))); */
        		 }
        	}
        
      
        	
       // alert(parseInt(thisYear));
      // alert(parseInt(accom_birth[0].substr(0,4)));
       // alert(parseInt(thisYear)-parseInt(accom_birth[0].substr(0,4)));
        //alert(accom_tp_date[0].substr(0,4));
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