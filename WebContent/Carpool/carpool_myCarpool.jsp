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
<head>
    
<%@include file="../header.jsp" %>


	<br>
	<div class="form_body">
		<form  class="join_form">
		     <div class="present">
            	<div class="tabs-list">
                	<ul class="tabs-list">
            			<li><a href="/city?serviceType=global&amp;tab=hotdeal" class="first-tag active"><span>CARPOOL</span></a></li>
            			<li><a href="insertForm.carpool"  class=""><span>카풀 등록</span></a></li>     
            			<li><a href="list.carpool" data-id="2d8eef384cefda06" class=""><span>대기중인 카풀 리스트</span></a></li>
            			<li><a href="/city?serviceType=global&amp;tab=hotdeal&amp;curationTag=f9188662257e085d" data-id="f9188662257e085d" class=""><span>내 카풀 등록 조회</span></a></li>  
					</ul>
                	<div id="google-ad-sense" style="margin-top:20px;float:left;" data-type="260x260">
                  		<script type="text/javascript">
                    		google_ad_client = "ca-pub-9419115827273897";
                    		google_ad_slot = "3548612763";
                    		google_ad_width = 260;
                    		google_ad_height = 260;
                  			</script>
                  			<script type="text/javascript"
                          		src="//pagead2.googlesyndication.com/pagead/show_ads.js">
                  			</script>
                	</div>
            	</div><!-- e//tabs-list -->
            </div> <!-- present -->
            
           
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
		</form>


	</div>

<%@include file="../footer.jsp" %>
</body>

</html>