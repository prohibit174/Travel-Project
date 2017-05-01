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
	<link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/css/carpool_css/carpool_list.css">
	<link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/css/carpool_css/city-main-styles.css"> 	
<head>
	<meta charset="UTF-8" />

	<meta http-equiv="X-UA-Compatible"	content="IE=edge, chrome=1" />

	<meta name="description"		content="국내 최대 카풀, KTX 카풀, 차계부, 주차장, 택시 카풀, 실시간 카풀, 자동차용품, 실내, 실외용품, 세차, 차량관리, 블랙박스, 차량관리 단계별 용품, 실내관리, 출장세차, 소낙스, 소프트99, 맥과이어스, 엑소기어, 인피니앱, 리틀트리, 코원" />
	<meta name="keywords"			content="카풀, 자동차 카풀, 스키카풀, 여행카풀, 명절카풀, 추석카풀, 설카풀, KTX카풀, KTX, 차계부, 주차장, 택시 카풀, 실시간 카풀, 자동차용품, 실내, 실외용품, 세차, 차량관리, 블랙박스, 차량관리 단계별 용품, 실내관리, 출장세차, 소낙스, 소프트99, 맥과이어스, 엑소기어, 인피니앱, 리틀트리, 코원" />
	<meta name="author"				content="SocialNanum" />
	<meta name="viewport"			content="width=device-width, user-scalable=yes" />

	<meta name="apple-mobile-web-app-status-bar-style" content="default" />

	<title>카풀조회</title>




</head>

<div class="page-container">
  <!-- {header -->
  <div class="header">
    <div class="main-nav-con">
      <p class="wishbeen-logo"><span>심심할 틈이 없다! 프로동행러</span></p>

      <div class="nav-login-search">
        <a class="btn-new-plan">로그인</a>
        <div class="login-and-profile">
          
          <div>
            <a id="nav-btn-about" href="http://blog.naver.com/PostThumbnailList.nhn?blogId=wishbeen&from=postList&categoryNo=97&parentCategoryNo=97" target="_blank">회원가입</a>
            <a id="nav-login-btn" class="nav-btn-login">마이페이지</a>
            <a id="nav-fb-login" class="fb"></a>
            <a id="nav-ggl-login" class="ggl"></a>
          </div>
          
          
        </div><!-- login-and-profile -->
      </div>
    </div>
  </div><!-- header } -->
</div><!-- page-container -->


<div class="main-tabs">
    <div class="tabs-list">
        <ul id="menu_tab_list">
            <li><a data-tab="home" >HOME</a></li>	
            <li><a data-tab="hotdeal" >동행</a></li>
            <li><a href="main.carpool" >카풀</a></li>
            <li><a data-tab="community" >물품교환</a></li>
            <li><a data-tab="plan" >커뮤니티</a></li>
            <li><a data-tab="attraction" >블로그</a></li>

        </ul><!-- e// tabs -->
    </div><!-- e//tabs-list -->

   <!-- e//search-box -->
</div><!-- e//main-tabs -->



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
            
            

	<section class="section" id="content_wrapper">
	<section id="box_header">

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
		</section> <!-- box_header -->

	<!-- temp -->
	<div class="box_temp hideClass">
		<!-- 카풀, 택시카풀 일때 -->
		<div class="place_wrap j_tmp_src_key_box_addr">
			<!-- 카풀, 택시카풀 출발지 도착지 -->
			<div class="inp_wrap start_place">
				<img src="/images/pc/ico_start.gif" title="출발지" alt="출발지" width="12px" height="20px">
				<input type="search" name="src_key_1" value="" title="출발지를 입력해주세요" size="10" maxlength="100" placeholder="서울" class="inp_txt_comm">
			</div><!--
			--><div class="inp_wrap arrival_place">
				<img src="/images/pc/ico_arrival.gif" title="도착지" alt="도착지" width="12px" height="20px">
				<input type="search" name="src_key_2" value="" title="도착지를 입력해주세요" size="10" maxlength="100" placeholder="경기도" class="inp_txt_comm">
			</div>
		</div>

		<!-- ktx카풀일때 -->
		<div class="place_wrap j_tmp_src_key_box_ktx">
			<!-- ktx풀 출발지 도착지 -->
			<div class="start_place">
				<label>출발역</label><!--
				--><select name="src_key_1" title="출발역 선택" id="tmp_selKtxStartPlace" data-val="">
					<option value="">전체</option>
					<option value="1" data-region="1"  data-addr="서울특별시 용산구 동자동 서울역" data-lat="37.554531" data-lng="126.970663">서울역</option>
<option value="2" data-region="1"  data-addr="서울특별시 영등포구 영등포동 영등포역" data-lat="37.515756" data-lng="126.907410">영등포역</option>
<option value="3" data-region="1"  data-addr="서울특별시 용산구 한강로3가 용산역" data-lat="37.529890" data-lng="126.964775">용산역</option>
<option value="4" data-region="2"  data-addr="부산광역시 동구 초량동 부산역" data-lat="35.114512" data-lng="129.039356">부산역</option>
<option value="5" data-region="2"  data-addr="부산광역시 북구 구포동 구포역" data-lat="35.206747" data-lng="128.996433">구포역</option>
<option value="6" data-region="3"  data-addr="대구광역시 동구 신암동 동대구역" data-lat="35.879667" data-lng="128.628476">동대구역</option>
<option value="7" data-region="5"  data-addr="광주광역시 북구 중흥동 광주역" data-lat="35.165448" data-lng="126.909329">광주역</option>
<option value="8" data-region="5"  data-addr="광주광역시 광산구 송정동 광주송정역" data-lat="35.137743" data-lng="126.790981">광주송정역</option>
<option value="9" data-region="6"  data-addr="대전광역시 동구 중동 대전역" data-lat="36.331545" data-lng="127.433124">대전역</option>
<option value="10" data-region="6"  data-addr="대전광역시 중구 유천동 서대전역" data-lat="36.322517" data-lng="127.403933">서대전역</option>
<option value="11" data-region="7"  data-addr="울산광역시 울주군 삼남면 신화리 울산역" data-lat="35.550946" data-lng="129.137971">울산역</option>
<option value="12" data-region="31"  data-addr="경기도 고양시 덕양구 행신2동 812 행신역" data-lat="37.612461" data-lng="126.834090">행신역</option>
<option value="13" data-region="31"  data-addr="경기도 광명시 일직동 광명역" data-lat="37.415995" data-lng="126.884523">광명역</option>
<option value="14" data-region="31"  data-addr="경기도 수원시 팔달구 매산로1가 수원역" data-lat="37.266399" data-lng="126.999929">수원역</option>
<option value="15" data-region="41"  data-addr="경상남도 밀양시 가곡동 밀양역" data-lat="35.474521" data-lng="128.771189">밀양역</option>
<option value="16" data-region="41"  data-addr="경상남도 김해시 진영읍 설창리 진영역" data-lat="35.298117" data-lng="128.773195">진영역</option>
<option value="17" data-region="41"  data-addr="경상남도 창원시 의창구 용동 창원중앙역" data-lat="35.242675" data-lng="128.701590">창원중앙역</option>
<option value="18" data-region="41"  data-addr="경상남도 창원시 의창구 동정동 창원역" data-lat="35.257358" data-lng="128.606700">창원역</option>
<option value="19" data-region="41"  data-addr="경상남도 창원시 마산회원구 합성동 마산역" data-lat="35.236121" data-lng="128.577174">마산역</option>
<option value="20" data-region="41"  data-addr="경상남도 진주시 강남동 진주역" data-lat="35.178926" data-lng="128.088456">진주역</option>
<option value="21" data-region="42"  data-addr="경상북도 김천시 남면 옥산리 김천구미역" data-lat="36.113129" data-lng="128.180389">김천구미역</option>
<option value="22" data-region="42"  data-addr="경상북도 경주시 건천읍 화천리 신경주역" data-lat="35.798365" data-lng="129.138955">신경주역</option>
<option value="23" data-region="51"  data-addr="전라남도 장성군 장성읍 영천리 장성역" data-lat="35.299989" data-lng="126.780195">장성역</option>
<option value="24" data-region="51"  data-addr="전라남도 나주시 송월동 나주역" data-lat="35.014269" data-lng="126.716994">나주역</option>
<option value="25" data-region="51"  data-addr="전라남도 목포시 호남동 목포역" data-lat="34.791143" data-lng="126.386592">목포역</option>
<option value="26" data-region="51"  data-addr="전라남도 곡성군 곡성읍 읍내리 곡성역" data-lat="35.283630" data-lng="127.303702">곡성역</option>
<option value="27" data-region="51"  data-addr="전라남도 순천시 황전면 선변리 구례구역" data-lat="35.163488" data-lng="127.452664">구례구역</option>
<option value="28" data-region="51"  data-addr="전라남도 순천시 조곡동 순천역" data-lat="34.945789" data-lng="127.503260">순천역</option>
<option value="29" data-region="51"  data-addr="전라남도 여수시 여천동 여천역" data-lat="34.779197" data-lng="127.664217">여천역</option>
<option value="30" data-region="51"  data-addr="전라남도 여수시 덕충동 여수엑스포역" data-lat="34.752888" data-lng="127.748766">여수엑스포역</option>
<option value="31" data-region="52"  data-addr="전라북도 익산시 창인동1가 익산역" data-lat="35.940285" data-lng="126.946373">익산역</option>
<option value="32" data-region="52"  data-addr="전라북도 김제시 신풍동 김제역" data-lat="35.792445" data-lng="126.902961">김제역</option>
<option value="33" data-region="52"  data-addr="전라북도 정읍시 연지동 정읍역" data-lat="35.575723" data-lng="126.843006">정읍역</option>
<option value="34" data-region="52"  data-addr="전라북도 전주시 덕진구 우아동3가 전주역" data-lat="35.849770" data-lng="127.161798">전주역</option>
<option value="35" data-region="52"  data-addr="전라북도 남원시 왕정동 남원역" data-lat="35.411288" data-lng="127.361368">남원역</option>
<option value="36" data-region="71"  data-addr="충청남도 아산시 배방읍 장재리 천안아산역" data-lat="36.794599" data-lng="127.104378">천안아산역</option>
<option value="37" data-region="71"  data-addr="충청남도 계룡시 두마면 두계리 계룡역" data-lat="36.272988" data-lng="127.265293">계룡역</option>
<option value="38" data-region="71"  data-addr="충청남도 논산시 취암동 논산역" data-lat="36.207272" data-lng="127.092501">논산역</option>
<option value="39" data-region="72"  data-addr="충청북도 청원군 오송읍 봉산리 오송역" data-lat="36.619517" data-lng="127.325629">오송역</option>
				</select>
			</div><!--
			--><div class="arrival_place">
				<label>도착역</label><!--
				--><select name="src_key_2" title="도착역 선택" id="tmp_selKtxArriPlace" data-val="">
					<option value="">전체</option>
					<option value="1" data-region="1"  data-addr="서울특별시 용산구 동자동 서울역" data-lat="37.554531" data-lng="126.970663">서울역</option>
<option value="2" data-region="1"  data-addr="서울특별시 영등포구 영등포동 영등포역" data-lat="37.515756" data-lng="126.907410">영등포역</option>
<option value="3" data-region="1"  data-addr="서울특별시 용산구 한강로3가 용산역" data-lat="37.529890" data-lng="126.964775">용산역</option>
<option value="4" data-region="2"  data-addr="부산광역시 동구 초량동 부산역" data-lat="35.114512" data-lng="129.039356">부산역</option>
<option value="5" data-region="2"  data-addr="부산광역시 북구 구포동 구포역" data-lat="35.206747" data-lng="128.996433">구포역</option>
<option value="6" data-region="3"  data-addr="대구광역시 동구 신암동 동대구역" data-lat="35.879667" data-lng="128.628476">동대구역</option>
<option value="7" data-region="5"  data-addr="광주광역시 북구 중흥동 광주역" data-lat="35.165448" data-lng="126.909329">광주역</option>
<option value="8" data-region="5"  data-addr="광주광역시 광산구 송정동 광주송정역" data-lat="35.137743" data-lng="126.790981">광주송정역</option>
<option value="9" data-region="6"  data-addr="대전광역시 동구 중동 대전역" data-lat="36.331545" data-lng="127.433124">대전역</option>
<option value="10" data-region="6"  data-addr="대전광역시 중구 유천동 서대전역" data-lat="36.322517" data-lng="127.403933">서대전역</option>
<option value="11" data-region="7"  data-addr="울산광역시 울주군 삼남면 신화리 울산역" data-lat="35.550946" data-lng="129.137971">울산역</option>
<option value="12" data-region="31"  data-addr="경기도 고양시 덕양구 행신2동 812 행신역" data-lat="37.612461" data-lng="126.834090">행신역</option>
<option value="13" data-region="31"  data-addr="경기도 광명시 일직동 광명역" data-lat="37.415995" data-lng="126.884523">광명역</option>
<option value="14" data-region="31"  data-addr="경기도 수원시 팔달구 매산로1가 수원역" data-lat="37.266399" data-lng="126.999929">수원역</option>
<option value="15" data-region="41"  data-addr="경상남도 밀양시 가곡동 밀양역" data-lat="35.474521" data-lng="128.771189">밀양역</option>
<option value="16" data-region="41"  data-addr="경상남도 김해시 진영읍 설창리 진영역" data-lat="35.298117" data-lng="128.773195">진영역</option>
<option value="17" data-region="41"  data-addr="경상남도 창원시 의창구 용동 창원중앙역" data-lat="35.242675" data-lng="128.701590">창원중앙역</option>
<option value="18" data-region="41"  data-addr="경상남도 창원시 의창구 동정동 창원역" data-lat="35.257358" data-lng="128.606700">창원역</option>
<option value="19" data-region="41"  data-addr="경상남도 창원시 마산회원구 합성동 마산역" data-lat="35.236121" data-lng="128.577174">마산역</option>
<option value="20" data-region="41"  data-addr="경상남도 진주시 강남동 진주역" data-lat="35.178926" data-lng="128.088456">진주역</option>
<option value="21" data-region="42"  data-addr="경상북도 김천시 남면 옥산리 김천구미역" data-lat="36.113129" data-lng="128.180389">김천구미역</option>
<option value="22" data-region="42"  data-addr="경상북도 경주시 건천읍 화천리 신경주역" data-lat="35.798365" data-lng="129.138955">신경주역</option>
<option value="23" data-region="51"  data-addr="전라남도 장성군 장성읍 영천리 장성역" data-lat="35.299989" data-lng="126.780195">장성역</option>
<option value="24" data-region="51"  data-addr="전라남도 나주시 송월동 나주역" data-lat="35.014269" data-lng="126.716994">나주역</option>
<option value="25" data-region="51"  data-addr="전라남도 목포시 호남동 목포역" data-lat="34.791143" data-lng="126.386592">목포역</option>
<option value="26" data-region="51"  data-addr="전라남도 곡성군 곡성읍 읍내리 곡성역" data-lat="35.283630" data-lng="127.303702">곡성역</option>
<option value="27" data-region="51"  data-addr="전라남도 순천시 황전면 선변리 구례구역" data-lat="35.163488" data-lng="127.452664">구례구역</option>
<option value="28" data-region="51"  data-addr="전라남도 순천시 조곡동 순천역" data-lat="34.945789" data-lng="127.503260">순천역</option>
<option value="29" data-region="51"  data-addr="전라남도 여수시 여천동 여천역" data-lat="34.779197" data-lng="127.664217">여천역</option>
<option value="30" data-region="51"  data-addr="전라남도 여수시 덕충동 여수엑스포역" data-lat="34.752888" data-lng="127.748766">여수엑스포역</option>
<option value="31" data-region="52"  data-addr="전라북도 익산시 창인동1가 익산역" data-lat="35.940285" data-lng="126.946373">익산역</option>
<option value="32" data-region="52"  data-addr="전라북도 김제시 신풍동 김제역" data-lat="35.792445" data-lng="126.902961">김제역</option>
<option value="33" data-region="52"  data-addr="전라북도 정읍시 연지동 정읍역" data-lat="35.575723" data-lng="126.843006">정읍역</option>
<option value="34" data-region="52"  data-addr="전라북도 전주시 덕진구 우아동3가 전주역" data-lat="35.849770" data-lng="127.161798">전주역</option>
<option value="35" data-region="52"  data-addr="전라북도 남원시 왕정동 남원역" data-lat="35.411288" data-lng="127.361368">남원역</option>
<option value="36" data-region="71"  data-addr="충청남도 아산시 배방읍 장재리 천안아산역" data-lat="36.794599" data-lng="127.104378">천안아산역</option>
<option value="37" data-region="71"  data-addr="충청남도 계룡시 두마면 두계리 계룡역" data-lat="36.272988" data-lng="127.265293">계룡역</option>
<option value="38" data-region="71"  data-addr="충청남도 논산시 취암동 논산역" data-lat="36.207272" data-lng="127.092501">논산역</option>
<option value="39" data-region="72"  data-addr="충청북도 청원군 오송읍 봉산리 오송역" data-lat="36.619517" data-lng="127.325629">오송역</option>
				</select>
			</div>
		</div>

		<!-- 주차장일때 -->
		<div class="place_wrap j_tmp_src_key_box_park">
			<div class="inp_wrap parking_place">
				<img src="/images/pc/ico_start.gif" title="주차장" alt="주차장" width="12px" height="20px">
				<input type="search" name="src_key" value="" title="주차장 위치를 입력해주세요." size="10" maxlength="100" placeholder="위치 입력 후 아래주소 중 하나를 선택해 주세요." class="inp_txt_comm j_addr_google" id="myPlace">
				<input type="hidden" name="src_type"		value="park"	class="hideClass">
				<input type="hidden" name="src_lat"			value=""		class="hideClass j_addr_lat">
				<input type="hidden" name="src_lng"			value=""		class="hideClass j_addr_lng">
				<!--<input type="hidden" name="addr_parking_temp"	value=""		class="hideClass j_addr_temp">-->
			</div>
		</div>

		<!-- 운전자일때 -->
		<div class="place_wrap j_tmp_src_key_box_driver">
			<div class="inp_wrap start_place">
				<img src="/images/pc/ico_start.gif" title="출발지" alt="출발지" width="12px" height="20px">
				<input type="search" name="src_key_1" value="" title="출발지를 입력해주세요" size="10" maxlength="100" placeholder="출발지를 입력해주세요" class="inp_txt_comm j_addr_google" data-val="inp_driver_1">
				<input type="hidden" name="src_type"		value="driver"	class="hideClass">
				<input type="hidden" name="src_lat_1"		value=""		class="hideClass j_addr_lat_1">
				<input type="hidden" name="src_lng_1"		value=""		class="hideClass j_addr_lng_1">
			</div><!--
			--><div class="inp_wrap arrival_place">
				<img src="/images/pc/ico_arrival.gif" title="도착지" alt="도착지" width="12px" height="20px">
				<input type="search" name="src_key_2" value="" title="도착지를 입력해주세요" size="10" maxlength="100" placeholder="도착지를 입력해주세요" class="inp_txt_comm j_addr_google" data-val="inp_driver_2">
				<input type="hidden" name="src_type"		value="driver"	class="hideClass">
				<input type="hidden" name="src_lat_2"		value=""		class="hideClass j_addr_lat_2">
				<input type="hidden" name="src_lng_2"		value=""		class="hideClass j_addr_lng_2">
			</div>
		</div>
	</div>
		<div class="content_area">
			<div class="content" id="tikleList">
			
	
   
   
   
   
   	<table class="carpool_table">
		<caption class="hideClass">티클리스트 항목 구분 제목</caption>
		<tbody>
			<tr id="table_tab">
				<td class="list_dvs1">카풀번호</td>
				<td class="list_dvs1">출발위도</td>
				<td class="list_dvs1">출발경도</td>
				<td class="list_dvs1">도착위도</td>
				<td class="list_dvs1">도착경도</td>
				<td class="list_dvs2">가격</td>
				<td class="list_dvs2">날짜</td>
				<td class="list_dvs3">남은좌석</td>
				<td class="list_dvs3">도착날짜</td>
			</tr>
			
	<c:forEach var="carpool" items="${list}">
      <tr height="30">
        <td align="center">${carpool.c_num }</td>
         <td align="center">${carpool.start_lati }</td>
         <td align=center>${carpool.start_longti}</td>
         <td align="center">${carpool.dest_lati }</td>
         <td align="center">${carpool.dest_longti}</td>
         <td align="center">${carpool.c_price }</td>
         <td align="center">${carpool.c_date}</td>
         <td align="center">${carpool.c_person}</td>
         <td align="center">${carpool.c_dept_time}</td>
      </tr>      
      </c:forEach>  
		</tbody>
	</table>
	

<!-- <ul class="tiklelist_wrap">
			loop
				<li class="tiklelist">
				<div class="box_tikle">
					<figure class="use	r_pic">
						<img src="/profile/photo?no=38350" title="조민습" alt="조민습" style="width: 60px; height: 60px;" class="picture">
						<figcaption class="name">조민습</figcaption>
					</figure>
					<div class="tikle_con">
						<div class="box_tikle_info1">
							<div class="tikle_loc">
								출발지
								<div class="tikle_place tikle_start"><h1 class="hidden">출발지</h1>서울특별시</div>
								
								<span class="ico_dir_wrap"><i class="ico_dir"></i></span>
								
								도착지 
								<div class="tikle_place tikle_arrival"><h1 class="hidden">도착지</h1>경상북도 경산시</div>
							</div>
							
							<div class="tikle_date">2017.04.29 오후 9시 0분</div><span title="티클목적" class="tikle_purpose">출퇴근</span>
						</div>
						유형 및 금액
						<div class="box_tikle_info2">
							타세요
							<div class="tikle_type">
								<span title="티클 유형" class="tikle_type1">단기 카풀</span>
								<span title="티클 유형2" class="tikle_type2">타세요</span>
							</div>
							
							<div class="tikle_type">
								<span title="예약 가능 자리" class="tikle_seat"><strong>3</strong>자리</span> 
								<span title="1인 요금입니다">15,000원<small>/인</small></span>
							</div>
													</div>
	
										</div>
				</div>
			함께아는 친구
			2014-01-03 이창순 - 사용안함
			<div class="box_cofriends hideClass">
				<h1 class="title_cofriends">함께아는친구</h1>
				<ul>
					loop
					<li class="cofriends_list">
						<a href="###" title="" target="_blank" class="link_fb">
							사진
							<img src="" title="" alt="" style="width: 30px; height: 30px" class="picture">
						</a>
					</li>
				</ul>
			</div>
		</li>
				<li class="tiklelist">
						<a href="/tikle/view?no=29531&list=%2Ftikle%2Ftiklelist%3Ftikle_kind%3D1%26tikle_pattern%3D1" title="단기 카풀 태워주세요 : 서울 영등포구 ⇒ 부산 해운대구" class="link_tikleview j_btn_link_tikle_view">
				<div class="box_tikle">
					<figure class="user_pic">
						<img src="/profile/photo?no=38221" title="김정윤" alt="김정윤" style="width: 60px; height: 60px;" class="picture">
						<figcaption class="name">김정윤</figcaption>
					</figure>
					<div class="tikle_con">
						<div class="box_tikle_info1">
							<div class="tikle_loc">
								출발지
								<div class="tikle_place tikle_start"><h1 class="hidden">출발지</h1>서울 영등포구</div>
								<span class="ico_dir_wrap"><i class="ico_dir"></i></span>
								도착지 
								<div class="tikle_place tikle_arrival"><h1 class="hidden">도착지</h1>부산 해운대구</div>
							</div>
							<div class="tikle_date">2017.05.02 오후 5시 0분</div><span title="티클목적" class="tikle_purpose">출퇴근</span>
						</div>
						유형 및 금액
						<div class="box_tikle_info2">
							타세요
							<div class="tikle_type">
								<span title="티클 유형" class="tikle_type1">단기 카풀</span>
								<span title="티클 유형2" class="tikle_type2">태워주세요</span>
							</div>
							
							<div class="tikle_type">
								<span title="예약 가능 자리" class="tikle_seat"><strong>1</strong>자리</span> 
								<span title="1인 요금입니다">26,000원<small>/인</small></span>
							</div>
													</div>
										</div>
				</div>
			</a>
			함께아는 친구
			2014-01-03 이창순 - 사용안함
			<div class="box_cofriends hideClass">
				<h1 class="title_cofriends">함께아는친구</h1>
				<ul>
					loop
					<li class="cofriends_list">
						<a href="###" title="" target="_blank" class="link_fb">
							사진
							<img src="" title="" alt="" style="width: 30px; height: 30px" class="picture">
						</a>
					</li>
				</ul>
			</div>
		</li>
	</ul>  -->

	<!-- 페이징 -->
	<div class="paging" style="margin-top: 50px;">
		<strong class="">1</strong><a href="http://www.tikle.co.kr/tikle/tiklelist?tikle_kind=1&tikle_pattern=1&amp;page=2" class="">2</a><a href="http://www.tikle.co.kr/tikle/tiklelist?tikle_kind=1&tikle_pattern=1&amp;page=3" class="">3</a><a href="http://www.tikle.co.kr/tikle/tiklelist?tikle_kind=1&tikle_pattern=1&amp;page=4" class="">4</a><a href="http://www.tikle.co.kr/tikle/tiklelist?tikle_kind=1&tikle_pattern=1&amp;page=5" class="">5</a><a href="http://www.tikle.co.kr/tikle/tiklelist?tikle_kind=1&tikle_pattern=1&amp;page=6" class="">6</a><a href="http://www.tikle.co.kr/tikle/tiklelist?tikle_kind=1&tikle_pattern=1&amp;page=7" class="">7</a><a href="http://www.tikle.co.kr/tikle/tiklelist?tikle_kind=1&tikle_pattern=1&amp;page=8" class="">8</a><a href="http://www.tikle.co.kr/tikle/tiklelist?tikle_kind=1&tikle_pattern=1&amp;page=9" class="">9</a><a href="http://www.tikle.co.kr/tikle/tiklelist?tikle_kind=1&tikle_pattern=1&amp;page=10" class="">10</a><a href="http://www.tikle.co.kr/tikle/tiklelist?tikle_kind=1&tikle_pattern=1&amp;page=2" class=" direction next">다음</a><a href="http://www.tikle.co.kr/tikle/tiklelist?tikle_kind=1&tikle_pattern=1&amp;page=856" class=" direction next">마지막</a>	</div>
</div>
			<aside id="aside">
								<article class="aside snb" id="sidebarTikleList">
	<form action="" method="">
		<fieldset id="right_menu">
			<legend class="hidden">간편 검색</legend>
						<!-- 타세요 태워주세요 -->

												<!-- 남자만, 여자만 체크박스 -->
			<div class="box_search ">
				<div>
					<input type="radio" name="gender_seg" value="" title="성별 전체 리스트 보기" class="hidden " id="totalGender" data-src="src_gender" checked>
					<label for="totalGender" class="bg_type j_box_search">전체<span class="side_arrow"></span></label>
				</div><!--
				--><div class="box_search_ft">
					<input type="radio" name="gender_seg" value="1" title="남자 리스트 보기" class="hidden " id="onlyMen" data-src="src_gender" >
					<label for="onlyMen" class="bg_type j_box_search">남자만<span class="side_arrow"></span></label>
				</div><!--
				--><div>
					<input type="radio" name="gender_seg" value="2" title="여자 리스트 보기" class="hidden" id="onlyWomen" data-src="src_gender" >
					<label for="onlyWomen" class="bg_type j_box_search">여자만<span class="side_arrow"></span></label>
				</div>
			</div>
												<!-- 출발지 지역 검색 -->
			<div class="loc_wrap j_place j_start_place " data-src="addr_type" data-val="1">
				<div class="loc_top">
					<!-- 선택시 selected 추가해주세요 -->
					<button type="button" title="출발지 보기" class="btn_start_place selected">출발지</button><!--
					--><button type="button" title="도착지 보기" class="btn_arrival_place j_btn_arrival_place">도착지</button>				</div>
				<!-- 선택되면 selected 추가 -->
				<ol class="loc_state">
																													<li class="loc_state_list j_box_search" data-src="addr_region" data-val="1">
												<a href="###" title="프랑스" class="btn_state">
							<span class="txt_state">프랑스</span><span class="alert_frt"></span><span title="서울 등록수" class="alert_cnt">2938</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="2">
												<a href="###" title="독일" class="btn_state">
							<span class="txt_state">독일</span><span class="alert_frt"></span><span title="부산 등록수" class="alert_cnt">918</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="3">
												<a href="###" title="대구" class="btn_state">
							<span class="txt_state">대구</span><span class="alert_frt"></span><span title="대구 등록수" class="alert_cnt">602</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="4">
												<a href="###" title="인천" class="btn_state">
							<span class="txt_state">인천</span><span class="alert_frt"></span><span title="인천 등록수" class="alert_cnt">359</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="5">
												<a href="###" title="광주" class="btn_state">
							<span class="txt_state">광주</span><span class="alert_frt"></span><span title="광주 등록수" class="alert_cnt">251</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="6">
												<a href="###" title="대전" class="btn_state">
							<span class="txt_state">대전</span><span class="alert_frt"></span><span title="대전 등록수" class="alert_cnt">252</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="7">
												<a href="###" title="울산" class="btn_state">
							<span class="txt_state">울산</span><span class="alert_frt"></span><span title="울산 등록수" class="alert_cnt">181</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="8">
												<a href="###" title="세종" class="btn_state">
							<span class="txt_state">세종</span><span class="alert_frt"></span><span title="세종 등록수" class="alert_cnt">2</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="21">
												<a href="###" title="강원" class="btn_state">
							<span class="txt_state">강원</span><span class="alert_frt"></span><span title="강원 등록수" class="alert_cnt">131</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="31">
												<a href="###" title="경기" class="btn_state">
							<span class="txt_state">경기</span><span class="alert_frt"></span><span title="경기 등록수" class="alert_cnt">1629</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="41">
												<a href="###" title="경남" class="btn_state">
							<span class="txt_state">경남</span><span class="alert_frt"></span><span title="경남 등록수" class="alert_cnt">325</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="42">
												<a href="###" title="경북" class="btn_state">
							<span class="txt_state">경북</span><span class="alert_frt"></span><span title="경북 등록수" class="alert_cnt">236</span>
						</a>
					</li>
																																		<li class="loc_state_list j_box_search" data-src="addr_region" data-val="51">
												<a href="###" title="전남" class="btn_state">
							<span class="txt_state">전남</span><span class="alert_frt"></span><span title="전남 등록수" class="alert_cnt">130</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="52">
												<a href="###" title="전북" class="btn_state">
							<span class="txt_state">전북</span><span class="alert_frt"></span><span title="전북 등록수" class="alert_cnt">152</span>
						</a>
					</li>
																																		<li class="loc_state_list j_box_search" data-src="addr_region" data-val="61">
												<a href="###" title="제주" class="btn_state">
							<span class="txt_state">제주</span><span class="alert_frt"></span><span title="제주 등록수" class="alert_cnt">26</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="71">
												<a href="###" title="충남" class="btn_state">
							<span class="txt_state">충남</span><span class="alert_frt"></span><span title="충남 등록수" class="alert_cnt">198</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="72">
												<a href="###" title="충북" class="btn_state">
							<span class="txt_state">충북</span><span class="alert_frt"></span><span title="충북 등록수" class="alert_cnt">106</span>
						</a>
					</li>
																						</ol>
			</div>
							<!-- 도착지 지역 검색 -->
			<div class="loc_wrap j_place j_arrival_place hideClass" data-src="addr_type" data-val="2">
				<div class="loc_top">
					<!-- 선택시 selected 추가해주세요 -->
					<button type="button" title="출발지 보기" class="btn_start_place j_btn_start_place">출발지</button><!--
					--><button type="button" title="도착지 보기" class="btn_arrival_place selected">도착지</button>
				</div>
				<ol class="loc_state">
																													<li class="loc_state_list j_box_search" data-src="addr_region" data-val="1">
												<a href="###" title="서울" class="btn_state">
							<span class="txt_state">서울</span><span class="alert_frt"></span><span title="서울 등록수" class="alert_cnt">2277</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="2">
												<a href="###" title="부산" class="btn_state">
							<span class="txt_state">부산</span><span class="alert_frt"></span><span title="부산 등록수" class="alert_cnt">1317</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="3">
												<a href="###" title="대구" class="btn_state">
							<span class="txt_state">대구</span><span class="alert_frt"></span><span title="대구 등록수" class="alert_cnt">620</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="4">
												<a href="###" title="인천" class="btn_state">
							<span class="txt_state">인천</span><span class="alert_frt"></span><span title="인천 등록수" class="alert_cnt">283</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="5">
												<a href="###" title="광주" class="btn_state">
							<span class="txt_state">광주</span><span class="alert_frt"></span><span title="광주 등록수" class="alert_cnt">359</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="6">
												<a href="###" title="대전" class="btn_state">
							<span class="txt_state">대전</span><span class="alert_frt"></span><span title="대전 등록수" class="alert_cnt">223</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="7">
												<a href="###" title="울산" class="btn_state">
							<span class="txt_state">울산</span><span class="alert_frt"></span><span title="울산 등록수" class="alert_cnt">191</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="8">
												<a href="###" title="세종" class="btn_state">
							<span class="txt_state">세종</span><span class="alert_frt"></span><span title="세종 등록수" class="alert_cnt">9</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="21">
												<a href="###" title="강원" class="btn_state">
							<span class="txt_state">강원</span><span class="alert_frt"></span><span title="강원 등록수" class="alert_cnt">423</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="31">
												<a href="###" title="경기" class="btn_state">
							<span class="txt_state">경기</span><span class="alert_frt"></span><span title="경기 등록수" class="alert_cnt">1068</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="41">
												<a href="###" title="경남" class="btn_state">
							<span class="txt_state">경남</span><span class="alert_frt"></span><span title="경남 등록수" class="alert_cnt">368</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="42">
												<a href="###" title="경북" class="btn_state">
							<span class="txt_state">경북</span><span class="alert_frt"></span><span title="경북 등록수" class="alert_cnt">362</span>
						</a>
					</li>
																																		<li class="loc_state_list j_box_search" data-src="addr_region" data-val="51">
												<a href="###" title="전남" class="btn_state">
							<span class="txt_state">전남</span><span class="alert_frt"></span><span title="전남 등록수" class="alert_cnt">234</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="52">
												<a href="###" title="전북" class="btn_state">
							<span class="txt_state">전북</span><span class="alert_frt"></span><span title="전북 등록수" class="alert_cnt">241</span>
						</a>
					</li>
																																		<li class="loc_state_list j_box_search" data-src="addr_region" data-val="61">
												<a href="###" title="제주" class="btn_state">
							<span class="txt_state">제주</span><span class="alert_frt"></span><span title="제주 등록수" class="alert_cnt">26</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="71">
												<a href="###" title="충남" class="btn_state">
							<span class="txt_state">충남</span><span class="alert_frt"></span><span title="충남 등록수" class="alert_cnt">217</span>
						</a>
					</li>
																									<li class="loc_state_list j_box_search" data-src="addr_region" data-val="72">
												<a href="###" title="충북" class="btn_state">
							<span class="txt_state">충북</span><span class="alert_frt"></span><span title="충북 등록수" class="alert_cnt">110</span>
						</a>
					</li>
																						</ol>
			</div>
									</fieldset>
	</form>
</article>							</aside>
		</div>
	</section>

	

<!--	2014-04-28 이창순 - https에서 사용 안됨
<div id="spot-im-root"></div><script>(function(e,t,n){function r(){var e=t.createElement("script");e.type="text/javascript";e.async=true;e.src=n;t.body.appendChild(e)}e.spotId="cdc2c74624e46df45fbdd04527d6ac28";e.spotName="lobby";e.type="FLOATING";e.template="";e.position="BOTTOM_RIGHT";e.size="MEDIUM";e.allowDesktop=true;e.allowMobile=true;e.containerId="spot-im-root";r()})(window.SPOTIM={},document,"//www.spot.im/embed/scripts/launcher.js")</script>
--></div>

<div id="popup_common" class="j_popup_common hideClass">
	<!-- 1단계 팝업 -->



	
</div><div id="popup_content" class="j_popup_content hideClass">
</div>
<div id="temp_common" class="j_temp_common hideClass">

	<!--2013-12-10 이창순 - 지역 목록 -->
	<div id="temp_region" class="hideClass">
		<select id="temp_region_sel" name="temp_region_sel" class="hideClass">
			<option value="1">서울</option>
<option value="2">부산</option>
<option value="3">대구</option>
<option value="4">인천</option>
<option value="5">광주</option>
<option value="6">대전</option>
<option value="7">울산</option>
<option value="8">세종</option>
<option value="21">강원</option>
<option value="31">경기</option>
<option value="41">경남</option>
<option value="42">경북</option>
<option value="51">전남</option>
<option value="52">전북</option>
<option value="61">제주</option>
<option value="71">충남</option>
<option value="72">충북</option>
		</select>
	</div>

	<style>
		.carpool_table{
			width: 100%;
		}
		#table_tab{
			background: gray;
		}
		#aside{
		    float: right;
    		width: 260px;
		}
		.paging{
			width: 600px;
			padding-left: 60px;
			
		}
		#tikleList{
			width: 750px;
			padding-top: 30px;
			padding-left: 100px;
		}
		#right_menu{
			padding-left: 120px;
		}

	</style>

</div><div id="temp_content" class="j_temp_content hideClass">

</div>


<iframe id="proc_frame" name="proc_frame" width="0" height="0" frameborder="0" scrolling="no" class="hideClass"></iframe>

<div id="footer">
    <div class="foot-inner">
  <div class="footer-wrap">
    <div class="footer-top">
      <ul class="footer-list">
        <li><a href="/companyInfo?active=aboutUs">서비스 소개</a></li>
        
        <li><a href="http://blog.naver.com/PostThumbnailList.nhn?blogId=wishbeen&from=postList&categoryNo=97&parentCategoryNo=97" target="_blank">위시빈 사용법</a></li>
        
        <li><a href="/companyInfo?active=faq">이용문의</a></li>
        <li><a href="/companyInfo?active=terms">이용약관</a></li>
        <li><a href="/companyInfo?active=privacy">개인정보 취급방침</a></li>
        <li><a href="/citySitemap">사이트맵</a></li>
        <li><span class="kakao-id"></span></li>
      </ul><!-- footer-list-->

      <div class="language">
        <!-- TODO: 언어 바뀌면 언어에 해당하는 도메인으로 이동하도록 수정 -->
        <div class="language-type01">
          <select id="language_select" class="state">
            <option value="ko-KR"  selected  >한국어</option>
            <option value="en-US"  >English</option>
          </select>
        </div>
        <div class="language-type02">
          <select class="currency money">
            
            
            
            
            <option value="2"  > USD(미국)</option>
            
            
            
            
            <option value="1" selected > KRW(한국)</option>
            
            
            
            
            <option value="0"  > EUR(유럽연합)</option>
            
            
            
            
            <option value="3"  > JPY(일본)</option>
            
            
            
            
            <option value="4"  > CNY(중국)</option>
            
            
            
            
            <option value="5"  > HKD(홍콩)</option>
            
            
            
            
            <option value="6"  > TWD(대만)</option>
            
            
            
            
            <option value="7"  > GBP(영국)</option>
            
            
            
            
            <option value="8"  > CAD(캐나다)</option>
            
            
            
            
            <option value="9"  > CHF(스위스)</option>
            
            
            
            
            <option value="10"  > SEK(스웨덴)</option>
            
            
            
            
            <option value="11"  > AUD(호주)</option>
            
            
            
            
            <option value="12"  > NZD(뉴질랜드)</option>
            
            
            
            
            <option value="13"  > CZK(체코)</option>
            
            
            
            
            <option value="14"  > TRY(터키)</option>
            
            
            
            
            <option value="15"  > MNT(몽골)</option>
            
            
            
            
            <option value="16"  > ILS(이스라엘)</option>
            
            
            
            
            <option value="17"  > DKK(덴마크)</option>
            
            
            
            
            <option value="18"  > NOK(노르웨이)</option>
            
            
            
            
            <option value="19"  > SAR(사우디아라비아)</option>
            
            
            
            
            <option value="20"  > KWD(쿠웨이트)</option>
            
            
            
            
            <option value="21"  > BHD(바레인)</option>
            
            
            
            
            <option value="22"  > AED(아랍에미리트)</option>
            
            
            
            
            <option value="23"  > JOD(요르단)</option>
            
            
            
            
            <option value="24"  > EGP(이집트)</option>
            
            
            
            
            <option value="25"  > THB(태국)</option>
            
            
            
            
            <option value="26"  > SGD(싱가포르)</option>
            
            
            
            
            <option value="27"  > MYR(말레이시아)</option>
            
            
            
            
            <option value="28"  > IDR(인도네시아)</option>
            
            
            
            
            <option value="29"  > QAR(카타르)</option>
            
            
            
            
            <option value="30"  > KZT(카자흐스탄)</option>
            
            
            
            
            <option value="31"  > BND(브루나이)</option>
            
            
            
            
            <option value="32"  > INR(인도)</option>
            
            
            
            
            <option value="33"  > PKR(파키스탄)</option>
            
            
            
            
            <option value="34"  > BDT(방글라데시)</option>
            
            
            
            
            <option value="35"  > PHP(필리핀)</option>
            
            
            
            
            <option value="36"  > MXN(멕시코)</option>
            
            
            
            
            <option value="37"  > BRL(브라질)</option>
            
            
            
            
            <option value="38"  > VND(베트남)</option>
            
            
            
            
            <option value="39"  > ZAR(남아프리카 공화국)</option>
            
            
            
            
            <option value="40"  > RUB(러시아)</option>
            
            
            
            
            <option value="41"  > HUF(헝가리)</option>
            
            
            
            
            <option value="42"  > PLN(폴란드)</option>
            
          </select>
        </div>
      </div><!-- language-->
    </div><!-- footer-menu-->
  </div><!-- footer-wrap-->
<!-- footer_partner_wrap-->
  <div class="footer-bottom">
    <div class="copyright">
      <p>상호명 : (주)투어스크랩<span>|</span>대표 : 박동두<span>|</span>개인정보책임자 : 이지현</p>
      <p>사업자등록번호 : 212-86-00908<span>|</span>통신판매업신고번호 : 제 2014-서울용산-00910 호<span>|</span><a href="http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=2128600908" target="_blank">사업자정보확인</a></p>
      <p>주소: 서울특별시 용산구 한강대로 324 (갈월동) 시가이아빌딩 6층 (주)투어스크랩<span>|<!--</span>대표번호 : 070-4045-9771<span>|--></span><a href="mailto:support@wishbeen.com">광고 및 제휴 : support@wishbeen.com</a></p>
      <p></p>
      <p>투어스크랩은 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 투어스크랩은 상품·거래정보 및 거래에 대하여 책임을 지지 않습니다.</p>
    </div>


  </div><!-- footer-bottom-->
    </div>
</div><!-- #footer-->



</body>

</html>