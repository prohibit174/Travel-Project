<%@page import="travel.carpool.model.Carpool"%>
<%@page import="java.util.List"%>
<%@page import="travel.carpool.model.CarpoolDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); 
%>
<!DOCTYPE html>



<html>
	<link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/css/carpool_css/carpool_table.css">
	<link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/css/carpool_css/carpool_list.css">
	<link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/css/carpool_css/city-main-styles.css"> 	
<head>
</head>
<%@include file="../header.jsp" %>





<body id="tikle">
<div id="wrapper">
        <div class="present">
            <div class="tabs-list">
                
                <ul class="tabs-list">
    
        
            <li><a href="/city?serviceType=global&amp;tab=hotdeal" class="first-tag active"><span>CARPOOL</span></a></li> 
            <li><a href="/city?serviceType=global&amp;tab=hotdeal&amp;curationTag=5d1504d8bebfc81e" data-id="5d1504d8bebfc81e" class=""><span>카풀 등록</span></a></li>
            <li><a href="/city?serviceType=global&amp;tab=hotdeal&amp;curationTag=2d8eef384cefda06" data-id="2d8eef384cefda06" class=""><span>대기중인 카풀 리스트</span></a></li>
            <li><a href="/city?serviceType=global&amp;tab=hotdeal&amp;curationTag=f9188662257e085d" data-id="f9188662257e085d" class=""><span>내 카풀 등록 조회</span></a></li>
            
		</ul>

                <div id="google-ad-sense" style="margin-top:20px;float:left;" data-type="260x260">
                  <script type="text/javascript">
                    google_ad_client = "ca-pub-9419115827273897";
                    google_ad_slot = "3548612763";
                    google_ad_width = 260;
                    google_ad_height = 260;
                  </script>
                  <!-- search-260x260 -->
                  <script type="text/javascript"
                          src="//pagead2.googlesyndication.com/pagead/show_ads.js">
                  </script>
                  <script src="${pageContext.request.contextPath}/JS/loginPopup/loginPopup.js"></script>
                </div>
            
            </div><!-- e//tabs-list -->
            </div> <!-- present -->
            </div>
            
            



			<!-- 검색 -->
		<article class="header_bot hideClass1">
				<fieldset>
					<legend class="hidden">티클 검색하기</legend>
					<!-- 티클 타입 1 -->
	<input type="hidden" name="tikle_pattern" value="1" class="hideClass">
					
 <form action="list.carpool" method="post">
       <input type="hidden" name="temp" value="temp"></input>
       					<select name="carpool_search" data-val="1">
							<option value="">전체</option>
							<option value="u_id">회원정보</option>
							<option value="start_lati">출발지</option>
							<option value="dest_lati">도착지</option>
							<option value="c_price">가격</option>
							<option value="c_person">남은 좌석</option>
					</select>
       <input type="text" name="searchKey" size="20"></input>
       <input type="submit" name="" value="검색" title="검색" class="btn_type3 btn_search j_btn_search">
   </form>
				</fieldset>
		</article> <!-- header_bot hideClass1 -->






		<div class="content_area">
			<div class="content" id="tikleList">
			


	
            <div class="wrap">
            <div class="table">
               <ul>
               <c:forEach var="carpool" items="${list}">
                  <li>
                     <div class="top">
                        <h1>${carpool.c_num }</h1>
                        <div class = "circle">${carpool.c_price }$</div>
                     </div>
                     <div class="bottom">
                        <p><span>${carpool.start_lati }</span></p>
                        <p><span>${carpool.start_longti}</span></p>
                        <p><span>${carpool.dest_lati }</span></p>
                        <p><span>${carpool.dest_longti}</span></p>
                        <p><span>출발일 ${carpool.c_date}</span></p>
                        <p><span>남은좌석 ${carpool.c_person}</span></p>
                        <p><span>${carpool.c_dept_time}</span></p>
                         <div class="sign">
                            <a href='#' class='button'>자세히 보기</a>
                         </div>
                      </div>
                   </li>

               </c:forEach>
               </ul>
            </div>
         </div>
         </div>
         </div>

<%@include file="../footer.jsp" %>


</body>

</html>