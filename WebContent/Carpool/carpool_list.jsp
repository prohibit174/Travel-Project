<%@page import="travel.carpool.model.Carpool"%>
<%@page import="java.util.List"%>
<%@page import="travel.carpool.model.CarpoolDao"%>
<%@page import="travel.users.model.Users"%>
<%@page import="travel.users.model.UsersDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>



<html>
 <script type="text/javascript" src="${pageContext.request.contextPath}/JS/carpool_javascript/jquery.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/carpool_css/carpool_table.css">
<!-- <script type="text/javascript">
$(document).ready(function(){
		$('.apply_button').click(function(){
			if(confirm("신청하시겠습니까?") == true){
				alert('신청합니다');
				location.href="request.carpool?c_num=${carpool.c_num}";
			}
			else{
				alert('X')
			}
		});
	
});
</script> -->

<script type="text/javascript">
function applyLink(URL){
	if(confirm("신청하시겠습니까?") == true){
		location.href=URL;
		alert('신청되었습니다');

	}
	else{
		alert('X');
	}
}
</script>
<head>
</head>
<%@include file="../header.jsp"%>



<br>
<body id="tikle">
	<div id="wrapper">

		<div class="present">
			<div class="tabs-list">

				<ul class="tabs-list">
					<li><a href="main.carpool" class="first-tag active"><span>CARPOOL</span></a></li>
					<li><a href="insertForm.carpool" class=""><span>카풀
								등록</span></a></li>
					<li><a href="list.carpool" class=""><span>대기중인 카풀
								리스트</span></a></li>
					<li><a
						href="/city?serviceType=global&amp;tab=hotdeal&amp;curationTag=f9188662257e085d"
						data-id="f9188662257e085d" class=""><span>내 카풀 등록 조회</span></a></li>

				</ul>

				<div id="google-ad-sense" style="margin-top: 20px; float: left;"
					data-type="260x260">
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
					<script
						src="${pageContext.request.contextPath}/JS/loginPopup/loginPopup.js"></script>
				</div>
			<!-- 검색 -->
		<article class="header_bot hideClass1">
				<fieldset>
					<legend class="hidden">티클 검색하기</legend>
					<!-- 티클 타입 1 -->
	<input type="hidden" name="tikle_pattern" value="1" class="hideClass">
					

				</fieldset>
		</article> <!-- header_bot hideClass1 -->

			</div>
			<!-- e//tabs-list -->
			<div class="wrap">
					<form action="list.carpool" method="post">
			<input type="hidden" name="temp" value="temp"></input> <select
				name="carpool_search" data-val="1">
				<option value="">전체</option>
				<option value="u_id">회원정보</option>
				<option value="start_lati">출발지</option>
				<option value="dest_lati">도착지</option>
				<option value="c_price">가격</option>
				<option value="c_person">남은 좌석</option>
			</select> <input type="text" name="searchKey" size="20"></input> <input
				type="submit" name="" value="검색" title="검색"
				class="btn_type3 btn_search j_btn_search">
		</form>
				<div class="table">
					<ul>
						<c:forEach var="carpool" items="${listModel.list}">
							
							<li>
								<div class="top">
									<h5>등록번호 : ${carpool.c_num }</h5>
									<div class="circle">이미지</div>
								</div>
								<div class="bottom">
									<p>
										<span>등록자 : ${carpool.u_id }</span>
									</p>
									<p>
										<span>${carpool.start_lati }</span>
									</p>
									<p>
										<span>${carpool.start_longti}</span>
									</p>
									<p>
										<span>${carpool.dest_lati }</span>
									</p>
									<p>
										<span>${carpool.dest_longti}</span>
									</p>
									<p>
										<span>가격 : ${carpool.c_person}</span>
									</p>
									<p>
										<span>남은좌석 ${carpool.c_person}</span>
									</p>
									<p>
										<span>출발일시 : ${carpool.c_date}</span>
									</p>
									<p>
										<span>도착일시 : ${carpool.c_dept_time}</span>
									</p>

<!-- 									<div class="sign">
										<input type = "button" value="신청" class='apply_button'>
									</div> -->
									<div class="sign">
										<input type = "button" onclick="javascript:applyLink('request.carpool?c_num=${carpool.c_num}')"
										value="신청" class='apply_button'>
									</div>
									<br>
									<br>
								</div>
							</li>

						</c:forEach>
									

					</ul>
	
				</div>
				<!-- table -->

			</div>
			<!-- wrap -->

		</div>
		<!-- present -->
				<div id="paging">
   
   <!-- 이전 -->
   <span id="page_back">
   <c:if test="${listModel.startPage > 5 }">
      <a href="list.carpool?pageNum=${listModel.startPage - 5}" >[이전]</a>
   </c:if>
   </span>
   <!-- 페이지 목록 -->
   <c:forEach var="pageNo" begin="${listModel.startPage}"
      end="${listModel.endPage }">
      <span id="page_number">
      <c:if test="${listModel.requestPage == pageNo}"><b></c:if>
      <a href="list.carpool?pageNum=${pageNo}" >[${pageNo}]</a>
      <c:if test="${listModel.requestPage == pageNo}"></b></c:if>
      </span>
   </c:forEach>
   
   <!-- 이후 -->
   <span id="page_front">
   <c:if test="${listModel.endPage < listModel.totalPageCount}">
      <a href="list.carpool?pageNum=${listModel.startPage + 5}">[이후]</a>   
   </c:if>
   </span>
   </div><!-- paging end -->
	</div>
	<!-- wrapper -->


	


</body>
	<%@include file="../footer.jsp"%>
</html>