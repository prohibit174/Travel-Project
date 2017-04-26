<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html lang="ko" xmlns:fb="http://ogp.me/ns/fb#">

	<link rel="shortcut icon" href="/images/common/logo/favicon_32.ico">
	<link rel="apple-touch-icon" href="/images/common/logo/icon_114.png">

	<link rel="stylesheet" type="text/css"  href="../css/carpool_css/carpool_list.css">


	<script src="//ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.0.min.js"></script>
	<script src="//ajax.aspnetcdn.com/ajax/jquery.ui/1.10.4/jquery-ui.min.js"></script>

	<script type="text/javascript" src="/js/common/plugin/json2.min.js"></script>
	<script type="text/javascript" src="/js/common/plugin/jquery.cookie-1.4.0.min.js"></script>
	<script type="text/javascript" src="/js/common/plugin/jquery.blockUI-2.66.min.js"></script>

	<!--	PC	-->
	<script type="text/javascript" src="/js/common/plugin/jquery.dd-3.5.2.min.js"></script>
	<script type="text/javascript" src="/js/common/plugin/jquery.icheck-0.9.1.min.js"></script>

		<script type="text/javascript" src="/js/common/etc/googlelog.js"></script>
	
	<script src="//maps.googleapis.com/maps/api/js?key=AIzaSyAfykjZuWrV53RhU2VvEfs-FekoB0IFcls&sensor=false&language=ko&libraries=places"></script>

	<script type="text/javascript" src="/js/common/common_pattern.js?&v=201704258"></script>
	<script type="text/javascript" src="/js/common/common_msg.js?&v=201704258"></script>
	<script type="text/javascript" src="/js/common/common_func.js?&v=201704258"></script>

	<script type="text/javascript" src="/js/layout/head_common.js?&v=201704258"></script>



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

<body id="tikle">
<div id="wrapper">
	<a href="#content_wrapper" title="본문바로가기" target="_self" class="hidden">본문바로가기</a>
<header id="header">
	<section id="box_header">
		

		


			<!-- 검색 -->
		<article class="header_bot hideClass1">
			<form id="form_src" name="form_src" action="http://www.tikle.co.kr/tikle/tiklelist" method="GET">
				<fieldset>
					<legend class="hidden">티클 검색하기</legend>
					<!-- 티클 타입 1 -->
					<select name="tikle_kind" title="티클 유형1 검색 셀렉트박스" class="j_src_tikle_kind_sel" id="tikleType1" data-val="1">
						<option value="">전체</option>
						<option value="1">카풀</option>
						<option value="3">KTX카풀</option>
						<option value="2">택시카풀</option>
						<option value="4">주차장</option>
						<option value="5">운전자</option>
					</select><!--
					티클 타입 2
					--><select name="tikle_type" title="티클 유형2(카풀, 택시카풀) 검색 셀렉트 박스" id="tikleType2" class="j_src_tikle_type_sel" data-val="">
						<option value="">전체</option>
					</select><!--
					--><input type="hidden" name="tikle_pattern" value="1" class="hideClass"><!--
					카풀, ktx, 택시카풀, 주차장일때의 temp 파일 저장위치
					--><div class="search_wrap">
						<div class="place_wrap j_src_key_box">
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
					 </div><!--
					날짜
					--><!--
					검색버튼
					--><input type="submit" name="" value="검색" title="검색" class="btn_type3 btn_search j_btn_search">
				</fieldset>
			</form>
		</article>
		</section>

	<!-- 배너 --->
	<section id="mainBannerWrap" class="hideClass">
		<div class="inner_banner">
			<ul id="boxBanner">
<!--
				<li class="list_banner j_list_banner">
					<a href="https://www.gamebus.kr" title="게임버스 이벤트" target="_blank">
						<img src="/images/pc/banner/banner_gamebus_p.jpg" title="게임버스 타면 게임친구가 가득! 게임 좀 한다는 당신을 위한 취향저걱 앱!" alt="게임버스 타면 게임친구가 가득! 게임 좀 한다는 당신을 위한 취향저걱 앱!">
					</a>
				</li>
				<li class="list_banner j_list_banner " data-no="1">
					<a href="http://www.tikle.co.kr/board/view?no=987" title="티클 후기이벤트">
						<img src="/images/pc/banner/banner_14.jpg" title="티클 후기이벤트" alt="티클 후기이벤트">
					</a>
				</li><li class="list_banner j_list_banner " data-no="1">
					<a href="http://www.tikle.co.kr" title="티클 쇼핑몰 2014.7.14일 까지만 운영">
						<img src="/images/pc/banner/banner_15.jpg" title="티클 쇼핑몰 2014.7.14일 까지만 운영" alt="안녕하세요? 티클입니다. 티클 쇼핑몰 2014.7.14일 까지만 운영됩니다. 그동안 사랑해주신 분들께 진심으로 감사드리며, 문의사항은 게시판을 통해 부탁드립니다.">
					</a>
				</li><li class="list_banner j_list_banner " data-no="1">
					<a href="http://www.tikle.co.kr/driver/intro" title="티클 운전자 등록">
						<img src="/images/pc/banner/banner_09.jpg" title="내 주변 사람과 실시간으로 카풀하세요!" alt="내 주변 사람과 실시간으로 카풀하세요! 운전자 등록">
					</a>
				</li><li class="list_banner j_list_banner " data-no="4">
					<a href="http://www.tikle.co.kr/event/levelinfo#boxMileage" title="마일리지 전환방법 보러가기">
						<img src="/images/pc/banner/banner_12.jpg" title="티클에서 활동할수록 쌓이는 마일리지!" alt="티클에서 활동할수록 쌓이는 마일리지! 티클 쇼핑몰에서 바로 할인받으세요!">
					</a>
				</li><li class="list_banner j_list_banner " data-no="2">
					<a href="http://www.tikle.co.kr/driver/driverlist?tikle_kind=5" title="실시간 카풀 리스트 보러가기">
						<img src="/images/pc/banner/banner_11.jpg" title="실시간으로 카풀 하세요!" alt="근처 운전자와 실시간으로 카풀 하세요!">
					</a>
				</li><li class="list_banner j_list_banner " data-no="1">
					<a href="http://www.tikle.co.kr/ledger/ledger" title="티클 차계부">
						<img src="/images/pc/banner/banner_05_3.jpg" title="티클 차계부" alt="차에 들어가는 돈 1년에 60만원 아끼는법">
					</a>
				</li> 
-->
			</ul>
		</div>
	</section>

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
</header>
	<section class="section" id="content_wrapper">
		<div class="content_area">
			<div class="content" id="tikleList">
	<table class="tiklelist_dvs">
		<caption class="hideClass">티클리스트 항목 구분 제목</caption>
		<tbody>
			<tr>
				<td class="list_dvs1">프로필</td>
				<td class="list_dvs2">출발</td>
				<td class="list_dvs2">도착</td>
				<td class="list_dvs3">유형</td>
				<td class="list_dvs3">자리/금액</td>
			</tr>
		</tbody>
	</table>
	<ul class="tiklelist_wrap">
			<!-- loop -->
				<li class="tiklelist">
						<a href="/tikle/view?no=29702&list=%2Ftikle%2Ftiklelist%3Ftikle_kind%3D1%26tikle_pattern%3D1" title="단기 카풀 타세요 : 서울특별시 ⇒ 경상북도 경산시" class="link_tikleview j_btn_link_tikle_view">
				<div class="box_tikle">
					<figure class="user_pic">
						<img src="/profile/photo?no=38350" title="조민습" alt="조민습" style="width: 60px; height: 60px;" class="picture">
						<figcaption class="name">조민습</figcaption>
					</figure>
					<div class="tikle_con">
						<div class="box_tikle_info1">
							<div class="tikle_loc">
								<!-- 출발지 -->
								<div class="tikle_place tikle_start"><h1 class="hidden">출발지</h1>서울특별시</div><!-- 
								--><span class="ico_dir_wrap"><i class="ico_dir"></i></span><!--
								도착지 
								--><div class="tikle_place tikle_arrival"><h1 class="hidden">도착지</h1>경상북도 경산시</div>
							</div>
							<div class="tikle_date">2017.04.29 오후 9시 0분</div><span title="티클목적" class="tikle_purpose">출퇴근</span>
						</div><!-- 
						유형 및 금액
						--><div class="box_tikle_info2">
							<!-- 타세요 -->
							<div class="tikle_type">
								<span title="티클 유형" class="tikle_type1">단기 카풀</span>
								<span title="티클 유형2" class="tikle_type2">타세요</span>
							</div><!--
							--><!--
							--><div class="tikle_type">
								<span title="예약 가능 자리" class="tikle_seat"><strong>3</strong>자리</span> 
								<span title="1인 요금입니다">15,000원<small>/인</small></span>
							</div>
													</div>
											<!-- 인증정보 -->
						<div class="box_auth_cate">
							<ol title="사용자 인증 정보">
								<li class="auth_cate_ico">인증</li>
								<!-- 인증되면 class="auth_ok" 넣어주세요 -->
								<li title="전화번호 인증완료" class="auth_cate_list ">
									<span class="txt_auth">전화번호</span>
								</li>
								<li title="페이스북 인증완료" class="auth_cate_list ">
									<span class="txt_auth">페이스북</span>
								</li>
								<li title="대학교 인증완료" class="auth_cate_list ">
									<span class="txt_auth">대학교</span>
								</li>
								<li title="직장 인증완료" class="auth_cate_list auth_ok">
									<span class="txt_auth">직장</span>
								</li>
								<li title="이메일 인증완료" class="auth_cate_list auth_ok"> 
									<span class="txt_auth">이메일</span>
								</li>
							</ol>
						</div>
										</div>
				</div>
			</a>
			<!-- 함께아는 친구 -->
			<!-- 2014-01-03 이창순 - 사용안함 -->
			<div class="box_cofriends hideClass">
				<h1 class="title_cofriends">함께아는친구</h1>
				<ul>
					<!-- loop -->
					<li class="cofriends_list">
						<a href="###" title="" target="_blank" class="link_fb">
							<!-- 사진 -->
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
								<!-- 출발지 -->
								<div class="tikle_place tikle_start"><h1 class="hidden">출발지</h1>서울 영등포구</div><!-- 
								--><span class="ico_dir_wrap"><i class="ico_dir"></i></span><!--
								도착지 
								--><div class="tikle_place tikle_arrival"><h1 class="hidden">도착지</h1>부산 해운대구</div>
							</div>
							<div class="tikle_date">2017.05.02 오후 5시 0분</div><span title="티클목적" class="tikle_purpose">출퇴근</span>
						</div><!-- 
						유형 및 금액
						--><div class="box_tikle_info2">
							<!-- 타세요 -->
							<div class="tikle_type">
								<span title="티클 유형" class="tikle_type1">단기 카풀</span>
								<span title="티클 유형2" class="tikle_type2">태워주세요</span>
							</div><!--
							--><!--
							--><div class="tikle_type">
								<span title="예약 가능 자리" class="tikle_seat"><strong>1</strong>자리</span> 
								<span title="1인 요금입니다">26,000원<small>/인</small></span>
							</div>
													</div>
										</div>
				</div>
			</a>
			<!-- 함께아는 친구 -->
			<!-- 2014-01-03 이창순 - 사용안함 -->
			<div class="box_cofriends hideClass">
				<h1 class="title_cofriends">함께아는친구</h1>
				<ul>
					<!-- loop -->
					<li class="cofriends_list">
						<a href="###" title="" target="_blank" class="link_fb">
							<!-- 사진 -->
							<img src="" title="" alt="" style="width: 30px; height: 30px" class="picture">
						</a>
					</li>
				</ul>
			</div>
		</li>
				<li class="tiklelist">
						<a href="/tikle/view?no=29693&list=%2Ftikle%2Ftiklelist%3Ftikle_kind%3D1%26tikle_pattern%3D1" title="단기 카풀 태워주세요 : 경기도 부천시 ⇒ 대구광역시 동구 신암동 동대구역" class="link_tikleview j_btn_link_tikle_view">
				<div class="box_tikle">
					<figure class="user_pic">
						<img src="/profile/photo?no=38369" title="조성호" alt="조성호" style="width: 60px; height: 60px;" class="picture">
						<figcaption class="name">조성호</figcaption>
					</figure>
					<div class="tikle_con">
						<div class="box_tikle_info1">
							<div class="tikle_loc">
								<!-- 출발지 -->
								<div class="tikle_place tikle_start"><h1 class="hidden">출발지</h1>경기도 부천시</div><!-- 
								--><span class="ico_dir_wrap"><i class="ico_dir"></i></span><!--
								도착지 
								--><div class="tikle_place tikle_arrival"><h1 class="hidden">도착지</h1>대구광역시 동구 신암동 동대구역</div>
							</div>
							<div class="tikle_date">2017.05.06 오전 11시 0분</div><span title="티클목적" class="tikle_purpose">출퇴근</span>
						</div><!-- 
						유형 및 금액
						--><div class="box_tikle_info2">
							<!-- 타세요 -->
							<div class="tikle_type">
								<span title="티클 유형" class="tikle_type1">단기 카풀</span>
								<span title="티클 유형2" class="tikle_type2">태워주세요</span>
							</div><!--
							--><!--
							--><div class="tikle_type">
								<span title="예약 가능 자리" class="tikle_seat"><strong>1</strong>자리</span> 
								<span title="1인 요금입니다">0원<small>/인</small></span>
							</div>
													</div>
										</div>
				</div>
			</a>
			<!-- 함께아는 친구 -->
			<!-- 2014-01-03 이창순 - 사용안함 -->
			<div class="box_cofriends hideClass">
				<h1 class="title_cofriends">함께아는친구</h1>
				<ul>
					<!-- loop -->
					<li class="cofriends_list">
						<a href="###" title="" target="_blank" class="link_fb">
							<!-- 사진 -->
							<img src="" title="" alt="" style="width: 30px; height: 30px" class="picture">
						</a>
					</li>
				</ul>
			</div>
		</li>
				<li class="tiklelist">
						<a href="/tikle/view?no=17902&list=%2Ftikle%2Ftiklelist%3Ftikle_kind%3D1%26tikle_pattern%3D1" title="단기 카풀 타세요 : 경남 ⇒ 경남" class="link_tikleview j_btn_link_tikle_view">
				<div class="box_tikle">
					<figure class="user_pic">
						<img src="/profile/photo?no=3356" title="김현성" alt="김현성" style="width: 60px; height: 60px;" class="picture">
						<figcaption class="name">김현성</figcaption>
					</figure>
					<div class="tikle_con">
						<div class="box_tikle_info1">
							<div class="tikle_loc">
								<!-- 출발지 -->
								<div class="tikle_place tikle_start"><h1 class="hidden">출발지</h1>경남</div><!-- 
								--><span class="ico_dir_wrap"><i class="ico_dir"></i></span><!--
								도착지 
								--><div class="tikle_place tikle_arrival"><h1 class="hidden">도착지</h1>경남</div>
							</div>
							<div class="tikle_date">2013.04.29 오전 3시 4분</div><span title="티클목적" class="tikle_purpose">출퇴근</span>
						</div><!-- 
						유형 및 금액
						--><div class="box_tikle_info2">
							<!-- 타세요 -->
							<div class="tikle_type">
								<span title="티클 유형" class="tikle_type1">단기 카풀</span>
								<span title="티클 유형2" class="tikle_type2">타세요</span>
							</div><!--
							--><!--
							--><div class="tikle_end">
								마감
							</div><!--
							-->						</div>
											<!-- 인증정보 -->
						<div class="box_auth_cate">
							<ol title="사용자 인증 정보">
								<li class="auth_cate_ico">인증</li>
								<!-- 인증되면 class="auth_ok" 넣어주세요 -->
								<li title="전화번호 인증완료" class="auth_cate_list auth_ok">
									<span class="txt_auth">전화번호</span>
								</li>
								<li title="페이스북 인증완료" class="auth_cate_list auth_ok">
									<span class="txt_auth">페이스북</span>
								</li>
								<li title="대학교 인증완료" class="auth_cate_list ">
									<span class="txt_auth">대학교</span>
								</li>
								<li title="직장 인증완료" class="auth_cate_list ">
									<span class="txt_auth">직장</span>
								</li>
								<li title="이메일 인증완료" class="auth_cate_list "> 
									<span class="txt_auth">이메일</span>
								</li>
							</ol>
						</div>
										</div>
				</div>
			</a>
			<!-- 함께아는 친구 -->
			<!-- 2014-01-03 이창순 - 사용안함 -->
			<div class="box_cofriends hideClass">
				<h1 class="title_cofriends">함께아는친구</h1>
				<ul>
					<!-- loop -->
					<li class="cofriends_list">
						<a href="###" title="" target="_blank" class="link_fb">
							<!-- 사진 -->
							<img src="" title="" alt="" style="width: 30px; height: 30px" class="picture">
						</a>
					</li>
				</ul>
			</div>
		</li>
				<li class="tiklelist">
						<a href="/tikle/view?no=6&list=%2Ftikle%2Ftiklelist%3Ftikle_kind%3D1%26tikle_pattern%3D1" title="단기 카풀 태워주세요 : 서울특별시 광진구 구의3동 강변역 근처 ⇒ 경기도 구리시 인창동 구리 롯데백화점 근처" class="link_tikleview j_btn_link_tikle_view">
				<div class="box_tikle">
					<figure class="user_pic">
						<img src="/profile/photo?no=2" title="이창순" alt="이창순" style="width: 60px; height: 60px;" class="picture">
						<figcaption class="name">이창순</figcaption>
					</figure>
					<div class="tikle_con">
						<div class="box_tikle_info1">
							<div class="tikle_loc">
								<!-- 출발지 -->
								<div class="tikle_place tikle_start"><h1 class="hidden">출발지</h1>서울특별시 광진구 구의3동 강변역 근처</div><!-- 
								--><span class="ico_dir_wrap"><i class="ico_dir"></i></span><!--
								도착지 
								--><div class="tikle_place tikle_arrival"><h1 class="hidden">도착지</h1>경기도 구리시 인창동 구리 롯데백화점 근처</div>
							</div>
							<div class="tikle_date">2013.05.23 오후 5시 30분</div><span title="티클목적" class="tikle_purpose">카풀</span>
						</div><!-- 
						유형 및 금액
						--><div class="box_tikle_info2">
							<!-- 타세요 -->
							<div class="tikle_type">
								<span title="티클 유형" class="tikle_type1">단기 카풀</span>
								<span title="티클 유형2" class="tikle_type2">태워주세요</span>
							</div><!--
							--><!--
							--><div class="tikle_end">
								마감
							</div><!--
							-->						</div>
											<!-- 인증정보 -->
						<div class="box_auth_cate">
							<ol title="사용자 인증 정보">
								<li class="auth_cate_ico">인증</li>
								<!-- 인증되면 class="auth_ok" 넣어주세요 -->
								<li title="전화번호 인증완료" class="auth_cate_list auth_ok">
									<span class="txt_auth">전화번호</span>
								</li>
								<li title="페이스북 인증완료" class="auth_cate_list auth_ok">
									<span class="txt_auth">페이스북</span>
								</li>
								<li title="대학교 인증완료" class="auth_cate_list auth_ok">
									<span class="txt_auth">대학교</span>
								</li>
								<li title="직장 인증완료" class="auth_cate_list auth_ok">
									<span class="txt_auth">직장</span>
								</li>
								<li title="이메일 인증완료" class="auth_cate_list "> 
									<span class="txt_auth">이메일</span>
								</li>
							</ol>
						</div>
										</div>
				</div>
			</a>
			<!-- 함께아는 친구 -->
			<!-- 2014-01-03 이창순 - 사용안함 -->
			<div class="box_cofriends hideClass">
				<h1 class="title_cofriends">함께아는친구</h1>
				<ul>
					<!-- loop -->
					<li class="cofriends_list">
						<a href="###" title="" target="_blank" class="link_fb">
							<!-- 사진 -->
							<img src="" title="" alt="" style="width: 30px; height: 30px" class="picture">
						</a>
					</li>
				</ul>
			</div>
		</li>
				<li class="tiklelist">
						<a href="/tikle/view?no=11&list=%2Ftikle%2Ftiklelist%3Ftikle_kind%3D1%26tikle_pattern%3D1" title="단기 카풀 태워주세요 : 서울특별시 관악구 서원동 신림역 2번 출구 ⇒ 서울 광진구 구의3동 테크노마트 사무동 1518호" class="link_tikleview j_btn_link_tikle_view">
				<div class="box_tikle">
					<figure class="user_pic">
						<img src="/profile/photo?no=9" title="정현주" alt="정현주" style="width: 60px; height: 60px;" class="picture">
						<figcaption class="name">정현주</figcaption>
					</figure>
					<div class="tikle_con">
						<div class="box_tikle_info1">
							<div class="tikle_loc">
								<!-- 출발지 -->
								<div class="tikle_place tikle_start"><h1 class="hidden">출발지</h1>서울특별시 관악구 서원동 신림역 2번 출구</div><!-- 
								--><span class="ico_dir_wrap"><i class="ico_dir"></i></span><!--
								도착지 
								--><div class="tikle_place tikle_arrival"><h1 class="hidden">도착지</h1>서울 광진구 구의3동 테크노마트 사무동 1518호</div>
							</div>
							<div class="tikle_date">2013.05.24 오전 6시 0분</div><span title="티클목적" class="tikle_purpose">카풀</span>
						</div><!-- 
						유형 및 금액
						--><div class="box_tikle_info2">
							<!-- 타세요 -->
							<div class="tikle_type">
								<span title="티클 유형" class="tikle_type1">단기 카풀</span>
								<span title="티클 유형2" class="tikle_type2">태워주세요</span>
							</div><!--
							--><!--
							--><div class="tikle_end">
								마감
							</div><!--
							-->						</div>
											<!-- 인증정보 -->
						<div class="box_auth_cate">
							<ol title="사용자 인증 정보">
								<li class="auth_cate_ico">인증</li>
								<!-- 인증되면 class="auth_ok" 넣어주세요 -->
								<li title="전화번호 인증완료" class="auth_cate_list ">
									<span class="txt_auth">전화번호</span>
								</li>
								<li title="페이스북 인증완료" class="auth_cate_list auth_ok">
									<span class="txt_auth">페이스북</span>
								</li>
								<li title="대학교 인증완료" class="auth_cate_list ">
									<span class="txt_auth">대학교</span>
								</li>
								<li title="직장 인증완료" class="auth_cate_list ">
									<span class="txt_auth">직장</span>
								</li>
								<li title="이메일 인증완료" class="auth_cate_list "> 
									<span class="txt_auth">이메일</span>
								</li>
							</ol>
						</div>
										</div>
				</div>
			</a>
			<!-- 함께아는 친구 -->
			<!-- 2014-01-03 이창순 - 사용안함 -->
			<div class="box_cofriends hideClass">
				<h1 class="title_cofriends">함께아는친구</h1>
				<ul>
					<!-- loop -->
					<li class="cofriends_list">
						<a href="###" title="" target="_blank" class="link_fb">
							<!-- 사진 -->
							<img src="" title="" alt="" style="width: 30px; height: 30px" class="picture">
						</a>
					</li>
				</ul>
			</div>
		</li>
				<li class="tiklelist">
						<a href="/tikle/view?no=13&list=%2Ftikle%2Ftiklelist%3Ftikle_kind%3D1%26tikle_pattern%3D1" title="단기 카풀 태워주세요 : 서울 양천구 목2동 527 - 549 대성빌라102호 ⇒ 서울특별시 서초구 양재1동 KT연구소" class="link_tikleview j_btn_link_tikle_view">
				<div class="box_tikle">
					<figure class="user_pic">
						<img src="/profile/photo?no=11" title="Jaeyoung Choi" alt="Jaeyoung Choi" style="width: 60px; height: 60px;" class="picture">
						<figcaption class="name">Jaeyoung Choi</figcaption>
					</figure>
					<div class="tikle_con">
						<div class="box_tikle_info1">
							<div class="tikle_loc">
								<!-- 출발지 -->
								<div class="tikle_place tikle_start"><h1 class="hidden">출발지</h1>서울 양천구 목2동 527 - 549 대성빌라102호</div><!-- 
								--><span class="ico_dir_wrap"><i class="ico_dir"></i></span><!--
								도착지 
								--><div class="tikle_place tikle_arrival"><h1 class="hidden">도착지</h1>서울특별시 서초구 양재1동 KT연구소</div>
							</div>
							<div class="tikle_date">2013.05.24 오전 9시 0분</div><span title="티클목적" class="tikle_purpose">카풀</span>
						</div><!-- 
						유형 및 금액
						--><div class="box_tikle_info2">
							<!-- 타세요 -->
							<div class="tikle_type">
								<span title="티클 유형" class="tikle_type1">단기 카풀</span>
								<span title="티클 유형2" class="tikle_type2">태워주세요</span>
							</div><!--
							--><!--
							--><div class="tikle_end">
								마감
							</div><!--
							-->						</div>
											<!-- 인증정보 -->
						<div class="box_auth_cate">
							<ol title="사용자 인증 정보">
								<li class="auth_cate_ico">인증</li>
								<!-- 인증되면 class="auth_ok" 넣어주세요 -->
								<li title="전화번호 인증완료" class="auth_cate_list ">
									<span class="txt_auth">전화번호</span>
								</li>
								<li title="페이스북 인증완료" class="auth_cate_list auth_ok">
									<span class="txt_auth">페이스북</span>
								</li>
								<li title="대학교 인증완료" class="auth_cate_list ">
									<span class="txt_auth">대학교</span>
								</li>
								<li title="직장 인증완료" class="auth_cate_list ">
									<span class="txt_auth">직장</span>
								</li>
								<li title="이메일 인증완료" class="auth_cate_list "> 
									<span class="txt_auth">이메일</span>
								</li>
							</ol>
						</div>
										</div>
				</div>
			</a>
			<!-- 함께아는 친구 -->
			<!-- 2014-01-03 이창순 - 사용안함 -->
			<div class="box_cofriends hideClass">
				<h1 class="title_cofriends">함께아는친구</h1>
				<ul>
					<!-- loop -->
					<li class="cofriends_list">
						<a href="###" title="" target="_blank" class="link_fb">
							<!-- 사진 -->
							<img src="" title="" alt="" style="width: 30px; height: 30px" class="picture">
						</a>
					</li>
				</ul>
			</div>
		</li>
				<li class="tiklelist">
						<a href="/tikle/view?no=15&list=%2Ftikle%2Ftiklelist%3Ftikle_kind%3D1%26tikle_pattern%3D1" title="단기 카풀 타세요 : 경기 광주시 오포읍 신현리 1 - 590 광명초등학교 ⇒ 서울 강남구 논현동 YMCA 앞" class="link_tikleview j_btn_link_tikle_view">
				<div class="box_tikle">
					<figure class="user_pic">
						<img src="/profile/photo?no=13" title="Claude Yun" alt="Claude Yun" style="width: 60px; height: 60px;" class="picture">
						<figcaption class="name">Claude Yun</figcaption>
					</figure>
					<div class="tikle_con">
						<div class="box_tikle_info1">
							<div class="tikle_loc">
								<!-- 출발지 -->
								<div class="tikle_place tikle_start"><h1 class="hidden">출발지</h1>경기 광주시 오포읍 신현리 1 - 590 광명초등학교</div><!-- 
								--><span class="ico_dir_wrap"><i class="ico_dir"></i></span><!--
								도착지 
								--><div class="tikle_place tikle_arrival"><h1 class="hidden">도착지</h1>서울 강남구 논현동 YMCA 앞</div>
							</div>
							<div class="tikle_date">2013.05.24 오전 9시 0분</div><span title="티클목적" class="tikle_purpose">카풀</span>
						</div><!-- 
						유형 및 금액
						--><div class="box_tikle_info2">
							<!-- 타세요 -->
							<div class="tikle_type">
								<span title="티클 유형" class="tikle_type1">단기 카풀</span>
								<span title="티클 유형2" class="tikle_type2">타세요</span>
							</div><!--
							--><!--
							--><div class="tikle_end">
								마감
							</div><!--
							-->						</div>
											<!-- 인증정보 -->
						<div class="box_auth_cate">
							<ol title="사용자 인증 정보">
								<li class="auth_cate_ico">인증</li>
								<!-- 인증되면 class="auth_ok" 넣어주세요 -->
								<li title="전화번호 인증완료" class="auth_cate_list ">
									<span class="txt_auth">전화번호</span>
								</li>
								<li title="페이스북 인증완료" class="auth_cate_list auth_ok">
									<span class="txt_auth">페이스북</span>
								</li>
								<li title="대학교 인증완료" class="auth_cate_list ">
									<span class="txt_auth">대학교</span>
								</li>
								<li title="직장 인증완료" class="auth_cate_list ">
									<span class="txt_auth">직장</span>
								</li>
								<li title="이메일 인증완료" class="auth_cate_list "> 
									<span class="txt_auth">이메일</span>
								</li>
							</ol>
						</div>
										</div>
				</div>
			</a>
			<!-- 함께아는 친구 -->
			<!-- 2014-01-03 이창순 - 사용안함 -->
			<div class="box_cofriends hideClass">
				<h1 class="title_cofriends">함께아는친구</h1>
				<ul>
					<!-- loop -->
					<li class="cofriends_list">
						<a href="###" title="" target="_blank" class="link_fb">
							<!-- 사진 -->
							<img src="" title="" alt="" style="width: 30px; height: 30px" class="picture">
						</a>
					</li>
				</ul>
			</div>
		</li>
				<li class="tiklelist">
						<a href="/tikle/view?no=12&list=%2Ftikle%2Ftiklelist%3Ftikle_kind%3D1%26tikle_pattern%3D1" title="단기 카풀 타세요 : 서울 광진구 구의3동 테크노마트 사무동 1518호 ⇒ 서울특별시 관악구 중앙동 서울대입구역 3번 출구" class="link_tikleview j_btn_link_tikle_view">
				<div class="box_tikle">
					<figure class="user_pic">
						<img src="/profile/photo?no=9" title="정현주" alt="정현주" style="width: 60px; height: 60px;" class="picture">
						<figcaption class="name">정현주</figcaption>
					</figure>
					<div class="tikle_con">
						<div class="box_tikle_info1">
							<div class="tikle_loc">
								<!-- 출발지 -->
								<div class="tikle_place tikle_start"><h1 class="hidden">출발지</h1>서울 광진구 구의3동 테크노마트 사무동 1518호</div><!-- 
								--><span class="ico_dir_wrap"><i class="ico_dir"></i></span><!--
								도착지 
								--><div class="tikle_place tikle_arrival"><h1 class="hidden">도착지</h1>서울특별시 관악구 중앙동 서울대입구역 3번 출구</div>
							</div>
							<div class="tikle_date">2013.05.24 오후 5시 0분</div><span title="티클목적" class="tikle_purpose">카풀</span>
						</div><!-- 
						유형 및 금액
						--><div class="box_tikle_info2">
							<!-- 타세요 -->
							<div class="tikle_type">
								<span title="티클 유형" class="tikle_type1">단기 카풀</span>
								<span title="티클 유형2" class="tikle_type2">타세요</span>
							</div><!--
							--><!--
							--><div class="tikle_end">
								마감
							</div><!--
							-->						</div>
											<!-- 인증정보 -->
						
										</div>
				</div>
			</a>
			<!-- 함께아는 친구 -->
			<!-- 2014-01-03 이창순 - 사용안함 -->
			<div class="box_cofriends hideClass">
				<h1 class="title_cofriends">함께아는친구</h1>
				<ul>
					<!-- loop -->
					<li class="cofriends_list">
						<a href="###" title="" target="_blank" class="link_fb">
							<!-- 사진 -->
							<img src="" title="" alt="" style="width: 30px; height: 30px" class="picture">
						</a>
					</li>
				</ul>
			</div>
		</li>
				<li class="tiklelist">
						<a href="/tikle/view?no=16&list=%2Ftikle%2Ftiklelist%3Ftikle_kind%3D1%26tikle_pattern%3D1" title="단기 카풀 태워주세요 : 서울시 강서구 화곡동 강서구청 1111 ⇒ 천안 아산시 탕정면 2-9" class="link_tikleview j_btn_link_tikle_view">
				<div class="box_tikle">
					<figure class="user_pic">
						<img src="/profile/photo?no=16" title="박진명" alt="박진명" style="width: 60px; height: 60px;" class="picture">
						<figcaption class="name">박진명</figcaption>
					</figure>
					<div class="tikle_con">
						<div class="box_tikle_info1">
							<div class="tikle_loc">
								<!-- 출발지 -->
								<div class="tikle_place tikle_start"><h1 class="hidden">출발지</h1>서울시 강서구 화곡동 강서구청 1111</div><!-- 
								--><span class="ico_dir_wrap"><i class="ico_dir"></i></span><!--
								도착지 
								--><div class="tikle_place tikle_arrival"><h1 class="hidden">도착지</h1>천안 아산시 탕정면 2-9</div>
							</div>
							<div class="tikle_date">2013.05.25 오전 6시 0분</div><span title="티클목적" class="tikle_purpose">카풀</span>
						</div><!-- 
						유형 및 금액
						--><div class="box_tikle_info2">
							<!-- 타세요 -->
							<div class="tikle_type">
								<span title="티클 유형" class="tikle_type1">단기 카풀</span>
								<span title="티클 유형2" class="tikle_type2">태워주세요</span>
							</div><!--
							--><!--
							--><div class="tikle_end">
								마감
							</div><!--
							-->						</div>
											<!-- 인증정보 -->
						<div class="box_auth_cate">
							<ol title="사용자 인증 정보">
								<li class="auth_cate_ico">인증</li>
								<!-- 인증되면 class="auth_ok" 넣어주세요 -->
								<li title="전화번호 인증완료" class="auth_cate_list ">
									<span class="txt_auth">전화번호</span>
								</li>
								<li title="페이스북 인증완료" class="auth_cate_list auth_ok">
									<span class="txt_auth">페이스북</span>
								</li>
								<li title="대학교 인증완료" class="auth_cate_list ">
									<span class="txt_auth">대학교</span>
								</li>
								<li title="직장 인증완료" class="auth_cate_list ">
									<span class="txt_auth">직장</span>
								</li>
								<li title="이메일 인증완료" class="auth_cate_list "> 
									<span class="txt_auth">이메일</span>
								</li>
							</ol>
						</div>
										</div>
				</div>
			</a>
			<!-- 함께아는 친구 -->
			<!-- 2014-01-03 이창순 - 사용안함 -->
			<div class="box_cofriends hideClass">
				<h1 class="title_cofriends">함께아는친구</h1>
				<ul>
					<!-- loop -->
					<li class="cofriends_list">
						<a href="###" title="" target="_blank" class="link_fb">
							<!-- 사진 -->
							<img src="" title="" alt="" style="width: 30px; height: 30px" class="picture">
						</a>
					</li>
				</ul>
			</div>
		</li>
				</ul>

	<!-- 페이징 -->
	<div class="paging" style="margin-top: 50px;">
		<strong class="">1</strong><a href="http://www.tikle.co.kr/tikle/tiklelist?tikle_kind=1&tikle_pattern=1&amp;page=2" class="">2</a><a href="http://www.tikle.co.kr/tikle/tiklelist?tikle_kind=1&tikle_pattern=1&amp;page=3" class="">3</a><a href="http://www.tikle.co.kr/tikle/tiklelist?tikle_kind=1&tikle_pattern=1&amp;page=4" class="">4</a><a href="http://www.tikle.co.kr/tikle/tiklelist?tikle_kind=1&tikle_pattern=1&amp;page=5" class="">5</a><a href="http://www.tikle.co.kr/tikle/tiklelist?tikle_kind=1&tikle_pattern=1&amp;page=6" class="">6</a><a href="http://www.tikle.co.kr/tikle/tiklelist?tikle_kind=1&tikle_pattern=1&amp;page=7" class="">7</a><a href="http://www.tikle.co.kr/tikle/tiklelist?tikle_kind=1&tikle_pattern=1&amp;page=8" class="">8</a><a href="http://www.tikle.co.kr/tikle/tiklelist?tikle_kind=1&tikle_pattern=1&amp;page=9" class="">9</a><a href="http://www.tikle.co.kr/tikle/tiklelist?tikle_kind=1&tikle_pattern=1&amp;page=10" class="">10</a><a href="http://www.tikle.co.kr/tikle/tiklelist?tikle_kind=1&tikle_pattern=1&amp;page=2" class=" direction next">다음</a><a href="http://www.tikle.co.kr/tikle/tiklelist?tikle_kind=1&tikle_pattern=1&amp;page=856" class=" direction next">마지막</a>	</div>
</div>
			<aside id="aside">
								<article class="aside snb" id="sidebarTikleList">
	<form action="" method="">
		<fieldset>
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

	

</div><div id="temp_content" class="j_temp_content hideClass">

</div>


<iframe id="proc_frame" name="proc_frame" width="0" height="0" frameborder="0" scrolling="no" class="hideClass"></iframe>

<div id="fb-root"></div>


	<script type="text/javascript" src="/js/layout/header_content.js?&v=201704258"></script>

	<script type="text/javascript" src="/js/common/banner_header.js?&v=201704258"></script>


	<script type="text/javascript" src="/js/main/main_common.js?&v=201704258"></script>




	<script type="text/javascript" src="/js/sidebar/sidebar.js?&v=201704258"></script>



	<script type="text/javascript" src="/js/layout/footer_content.js?&v=201704258"></script>



	<script type="text/javascript" src="/js/popup/popup.js?&v=201704258"></script>




	<script type="text/javascript" src="/js/layout/footer_common.js?&v=201704258"></script>



	<script type="text/javascript" src="/js/common/api_fb.js?&v=201704258"></script>
</body>

</html>