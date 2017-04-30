<%@page import="travel.carpool.model.Carpool"%>
<%@page import="travel.carpool.model.CarpoolDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
    <%
String c_num = request.getParameter("c_num");

    CarpoolDao dao = CarpoolDao.getInstance();
    Carpool carpool = dao.detailCarpool(c_num);
   
   request.setAttribute("carpool", carpool);// 형 얘도 썼어요? 
   
%>
<!DOCTYPE html>
<html>
<head>
    
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
<meta name="viewport" content="width=device-width, user-scalable=no" />
<meta name="fragment" content="!" />
<meta name="naver-site-verification" content="b5dc8e0c6fe0f77b6e8a970e244d1d74397fc8cf"/>
<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico?1">
<meta name="referrer" content="origin">


<!--common meta data-->
<title>가볼만한곳/맛집/숙박 정보, 항공/호텔 가격비교, 나만의 여행일정 | 여행의 모든 것, 위시빈</title>
<meta name="keywords" content="위시빈, 여행일정, 여행정보, 여행꿀팁, 세계여행정보, 국내여행정보, 해외여행정보, 여행팁, 자유여행, 자유여행준비, 가이드북, 지도, 추천일정, 테마여행, 명소, 스팟, 맛집, 쇼핑, 숙박, 호텔, 게스트하우스, 최저가 항공권 검색, 최저가 숙박 검색, 최저가 호텔 검색, 특가 항공권, 무료 항공 이벤트, 무료 호텔 이벤트, 여행Q&A, 여행후기, 홍콩, 마카오, 오사카, 후쿠오카, 도쿄, 타이베이, 베이징, 상하이, 칭다오, 싱가포르, 방콕, 푸껫, 보라카이, 코타 키나발루, 파리, 로마, 런던, 바르셀로나, 크로아티아, 이스탄불, 뉴욕, 하와이, 미서부, 괌, 시드니, 제주, 타이중, 가오슝">
<meta name="description" content="궁금한 여행정보, 위시빈에 다 있다! 1천 개 이상의 전 세계 여행꿀팁 · 25만 개의 자유 여행일정 · 40만 개의 전 세계 가볼만한 곳, 맛집, 숙박 정보 · 여행자들이 직접 남긴 100만 개의 리뷰/후기/꿀팁 · 항공, 호텔 가격비교 · 나만의 여행일정 계획하기"/>
<link rel="canonical" href="https://www.wishbeen.co.kr/">
<meta name="url" content=https://www.wishbeen.co.kr/>
<!--<meta name="keywords" content="">-->
<meta name="subject" content="가볼만한곳/맛집/숙박 정보, 항공/호텔 가격비교, 나만의 여행일정">
<meta name="googlebot" content="index,follow">

<!--open graph data -->
<meta property="og:url" content="https://www.wishbeen.co.kr/">
<meta property="og:type" content="website">
<meta property="og:title" content="가볼만한곳/맛집/숙박 정보, 항공/호텔 가격비교, 나만의 여행일정 | 여행의 모든 것, 위시빈">
<meta property="og:image" content="https://wishbeen.akamaized.net/v2.5/images/wb_logo.png">
<meta property="og:description" content="궁금한 여행정보, 위시빈에 다 있다! 1천 개 이상의 전 세계 여행꿀팁 · 25만 개의 자유 여행일정 · 40만 개의 전 세계 가볼만한 곳, 맛집, 숙박 정보 · 여행자들이 직접 남긴 100만 개의 리뷰/후기/꿀팁 · 항공, 호텔 가격비교 · 나만의 여행일정 계획하기">
<meta property="og:site_name" content="wishbeen">
<meta property="og:locale" content="ko-KR">



<meta property="fb:app_id" content="14223064649276" />


<meta name="google-signin-client_id" content="41152955122-5m3ufq08325k2m3mgeppmkknn9rql13h.apps.googleusercontent.com">


<style type="text/css">
  body, pre {
    font-family: "맑은 고딕","Malgun Gothic","Helvetica Neue","Apple SD Gothic Neo",Helvetica,Arial,"Apple Gothic","돋움",Dotum,sans-serif!important;
  }

  .if-me{
    display: none !important;
  }

</style>
<script src="/js/lib/bower_components/stacktrace-js/dist/stacktrace.min.js"></script>
<script>(function () {
    window.onerror = function(msg, file, line, col, error) {
      // callback is called with an Array[StackFrame]
      StackTrace.fromError(error).then(function (stackframes) {
        StackTrace.report(stackframes, "/v2.5/ajax/errorHandler").catch(function (response) {
          console.error(response);
        });
      }).catch(function (err) {
        console.error(err);
      });
    };
  })();</script>

<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-T5WKH7"
                  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
          new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
          j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
          '//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
  })(window,document,'script','dataLayer','GTM-T5WKH7');</script>
<!-- End Google Tag Manager -->

<!--FacebookSDK-->
<script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.7&appId=1422306324649276";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));</script>
<!--EndFaceBookSDK-->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  
    ga('create', 'UA-45004699-2', 'wishbeen.co.kr');
    ga('require', 'displayfeatures');
    ga('send', 'pageview');
  

  ga('create', 'UA-53303012-1', 'auto', {'name': 'yelloTracker'});
  ga('yelloTracker.send', 'pageview');

  //wishbeen tracking send event
  function WebTrackingSendEvent(category, action, label){
    ga('send', 'event', category, action, label);
  }

  /*

   */
  function trackEventsByUrl(trackingEvents){

    var url = window.location.href;
    var urlArr = url.split('/');
    var eventKeys = Object.keys(trackingEvents);

    for( var eventKeyIndex in eventKeys){
      var eventKey = eventKeys[eventKeyIndex];

      if(urlArr.indexOf(eventKey) > -1){
        var event = trackingEvents[eventKey];
        WebTrackingSendEvent(event.category, event.action, event.label);
      }
    }
  }

  var g_localizedString = {
    _Confirm_:"확인",
    _Close_:"닫기",
    _Source_:"출처",
    _Notifications_: ""
  };

  var g_data = {
  };
  
  var g_isLogin = false;
  
  g_data['clientType'] = "web";
  
  g_data['gcid'] = "41152955122-5m3ufq08325k2m3mgeppmkknn9rql13h.apps.googleusercontent.com";
  
  var g_language = "ko-KR";

  //require js timeout 발생 하지 않도록함.
  var require = {
    waitSeconds: 0
  };
</script>
<!--[if lte IE 9]>
<link rel="stylesheet" href="/styles/ie8.css" />
<![endif]-->


<link rel="stylesheet" href="${pageContext.request.contextPath}/css/carpool_css/city-main-styles.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/carpool_css/carpoolJoin.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/carpool_css/carpoolJoin2.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/carpool_css/carpoolJoin3.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/carpool_css/carpoolJoin4.css" />

    <script data-main="/js/page/city"
            src="/js/lib/bower_components/requirejs/require.js"></script>
 <script type="text/javascript" src="${pageContext.request.contextPath}/JS/carpool_javascript/jquery.js"></script>
<script type="text/javascript" src="http://www.nowarch.com/resources/js/jquery-1.10.2.min.js"></script>           
<script type="text/javascript" src="${pageContext.request.contextPath}/JS/carpool_javascript/carpool_JoinEvent.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/JS/carpool_javascript/carpool_JoinEvent2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/JS/carpool_javascript/tests.js"></script>
 <script src='${pageContext.request.contextPath}/GoogleAPI/lib/jquery.min.js'></script>
<script src='${pageContext.request.contextPath}/GoogleAPI/lib/moment.min.js'></script>
<link rel='stylesheet' href='../GoogleAPI/fullcalendar.css' />
<script src='${pageContext.request.contextPath}/GoogleAPI/fullcalendar.js'></script>
<script src="${pageContext.request.contextPath}/GoogleAPI/moment.js"></script>
<script src="${pageContext.request.contextPath}/JS/loginPopup/loginPopup.js"></script>
<script>
    moment().format();
</script>
<script type="text/javascript">



		
	
</script>
    <!--[if lt IE 9]>
    <script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js"></script>
    <![endif]-->

</head>
<body>


<script type="text/javascript">
  function snsLoginHandler(){
    window.location.reload();
  }
</script>

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

<!-- 포함되어야 할 파라미터 목록 -->
<!-- language, curCity, tab (현재 선택된 탭) -->
<script>
  g_data['searchTabData'] = {
    language : "ko-KR",
    curServiceType: "global",
    curCityName: "전세계",
    tab: ""
  };
  g_localizedString['_SearchRegion_'] = "지역검색";
</script>
  <script src='../GoogleAPI/lib/jquery.min.js'></script>
<script src='../GoogleAPI/lib/moment.min.js'></script>
<link rel='stylesheet' href='../GoogleAPI/fullcalendar.css' />
<script src='../GoogleAPI/fullcalendar.js'></script>
<script src="../GoogleAPI/moment.js"></script>
<script>
    moment().format();
</script>
<div id="search_tab_dim" class="bg hide"></div>

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


<div id="contents"  class="city">
    <div class="conts-container">
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
                </div>
            
            </div><!-- e//tabs-list -->
<form action="carpoolUpdate2.mypage?c_num=${carpool.c_num}" method="post">	
    <div id="carpool_map">
    	<h3 id="carpool_title">카풀의 출발지와 목적지를 마크 하세요</h3>
    	<br>
    	<div id="map"></div>
    </div>
            </div>

						<div class="nlogin_total_box">
							<h3 class="nlogin_title nlogin_email_title">카풀 등록 정보</h3>
							<div class="nlogin_content">
								<div class="email_member_join">

									<table class="nlogin_table" cellpadding="0" cellspacing="0">
									<colgroup>
										<col width="130" />
										<col width="*" />
									</colgroup>
									<tbody>
										<tr>
											<td colspan="2" colspan="2">
												<div class="nlogin_form_section nlogin_form_text">
													<label for="join_email_id">출발위도</label>
													<input type="text" name="start_lati"   id="join_email_id" title="이메일 주소"  maxlength="96"/>
													<span class="email_alpha"></span>
													<span class="login_email_02_pos"></span>
												</div>
												
												<div class="nlogin_form_section nlogin_form_text">
													<label for="join_email_id">출발경도</label>
													<input type="text" name="start_longti" id="join_email_id" title="이메일 주소" maxlength="96"/>
													<span class="email_alpha"></span>
													<span class="login_email_02_pos"></span>
												</div>
												
												<div class="nlogin_form_section nlogin_form_text">
													<label for="join_email_id">도착위도</label>
													<input type="text" name="dest_lati"  id="join_email_id" title="이메일 주소"  maxlength="96"/>
													<span class="email_alpha"></span>
													<span class="login_email_02_pos"></span>
												</div>
												
												<div class="nlogin_form_section nlogin_form_text">
													<label for="join_email_id">도착경도</label>
													<input type="text" name="dest_longti" id="join_email_id" title="이메일 주소" maxlength="96"/>
													<span class="email_alpha"></span>
													<span class="login_email_02_pos"></span>
												</div>
												<span class="nlogin_pass_info" id="join_id_helper"></span>
											</td>
										</tr>
										<tr>
											<td colspan="2">
											<div class="nlogin_form_section">
																								<div class="nlogin_date_info">출발일시는 다른 이용자를 위해 꼭 필요한 정보입니다.</div>
											
													<div class="nlogin_select" id="nlogin_year">
														<input type="hidden" id="nlogin_year_value" name="birth_y">
														<p data-value="choice"><span>년도</span></p>
														<ul>
																													<li><a href="#" id="y1" data-value="2003">2003</a></li>
																													<li><a href="#" id="y2" data-value="2002">2002</a></li>
																													<li><a href="#" id="y3" data-value="2001">2001</a></li>
																													<li><a href="#" id="y4" data-value="2000">2000</a></li>
																													<li><a href="#" id="y5" data-value="1999">1999</a></li>
																													<li><a href="#" id="y6" data-value="1998">1998</a></li>
																													<li><a href="#" id="y7" data-value="1997">1997</a></li>
																													<li><a href="#" id="y8" data-value="1996">1996</a></li>
																													<li><a href="#" id="y9" data-value="1995">1995</a></li>
																													<li><a href="#" id="y10" data-value="1994">1994</a></li>
																													<li><a href="#" id="y11" data-value="1993">1993</a></li>
																													<li><a href="#" id="y12" data-value="1992">1992</a></li>
																													<li><a href="#" id="y13" data-value="1991">1991</a></li>
																													<li><a href="#" id="y14" data-value="1990">1990</a></li>
																													<li><a href="#" id="y15" data-value="1989">1989</a></li>
																													<li><a href="#" id="y16" data-value="1988">1988</a></li>
																													<li><a href="#" id="y17" data-value="1987">1987</a></li>
																													<li><a href="#" id="y18" data-value="1986">1986</a></li>
																													<li><a href="#" id="y19" data-value="1985">1985</a></li>
																													<li><a href="#" id="y20" data-value="1984">1984</a></li>
																													<li><a href="#" id="y21" data-value="1983">1983</a></li>
																													<li><a href="#" id="y22" data-value="1982">1982</a></li>
																													<li><a href="#" id="y23" data-value="1981">1981</a></li>
																													<li><a href="#" id="y24" data-value="1980">1980</a></li>
																													<li><a href="#" id="y25" data-value="1979">1979</a></li>
																													<li><a href="#" id="y26" data-value="1978">1978</a></li>
																													<li><a href="#" id="y27" data-value="1977">1977</a></li>
																													<li><a href="#" id="y28" data-value="1976">1976</a></li>
																													<li><a href="#" id="y29" data-value="1975">1975</a></li>
																													<li><a href="#" id="y30" data-value="1974">1974</a></li>
																													<li><a href="#" id="y31" data-value="1973">1973</a></li>
																													<li><a href="#" id="y32" data-value="1972">1972</a></li>
																													<li><a href="#" id="y33" data-value="1971">1971</a></li>
																													<li><a href="#" id="y34" data-value="1970">1970</a></li>
																													<li><a href="#" id="y35" data-value="1969">1969</a></li>
																													<li><a href="#" id="y36" data-value="1968">1968</a></li>
																													<li><a href="#" id="y37" data-value="1967">1967</a></li>
																													<li><a href="#" id="y38" data-value="1966">1966</a></li>
																													<li><a href="#" id="y39" data-value="1965">1965</a></li>
																													<li><a href="#" id="y40" data-value="1964">1964</a></li>
																													<li><a href="#" id="y41" data-value="1963">1963</a></li>
																													<li><a href="#" id="y42" data-value="1962">1962</a></li>
																													<li><a href="#" id="y43" data-value="1961">1961</a></li>
																													<li><a href="#" id="y44" data-value="1960">1960</a></li>
																													<li><a href="#" id="y45" data-value="1959">1959</a></li>
																													<li><a href="#" id="y46" data-value="1958">1958</a></li>
																													<li><a href="#" id="y47" data-value="1957">1957</a></li>
																													<li><a href="#" id="y48" data-value="1956">1956</a></li>
																													<li><a href="#" id="y49" data-value="1955">1955</a></li>
																													<li><a href="#" id="y50" data-value="1954">1954</a></li>
																													<li><a href="#" id="y51" data-value="1953">1953</a></li>
																													<li><a href="#" id="y52" data-value="1952">1952</a></li>
																													<li><a href="#" id="y53" data-value="1951">1951</a></li>
																													<li><a href="#" id="y54" data-value="1950">1950</a></li>
																													<li><a href="#" id="y55" data-value="1949">1949</a></li>
																													<li><a href="#" id="y56" data-value="1948">1948</a></li>
																													<li><a href="#" id="y57" data-value="1947">1947</a></li>
																													<li><a href="#" id="y58" data-value="1946">1946</a></li>
																													<li><a href="#" id="y59" data-value="1945">1945</a></li>
																													<li><a href="#" id="y60" data-value="1944">1944</a></li>
																													<li><a href="#" id="y61" data-value="1943">1943</a></li>
																													<li><a href="#" id="y62" data-value="1942">1942</a></li>
																													<li><a href="#" id="y63" data-value="1941">1941</a></li>
																													<li><a href="#" id="y64" data-value="1940">1940</a></li>
																													<li><a href="#" id="y65" data-value="1939">1939</a></li>
																													<li><a href="#" id="y66" data-value="1938">1938</a></li>
																													<li><a href="#" id="y67" data-value="1937">1937</a></li>
																													<li><a href="#" id="y68" data-value="1936">1936</a></li>
																													<li><a href="#" id="y69" data-value="1935">1935</a></li>
																													<li><a href="#" id="y70" data-value="1934">1934</a></li>
																													<li><a href="#" id="y71" data-value="1933">1933</a></li>
																													<li><a href="#" id="y72" data-value="1932">1932</a></li>
																													<li><a href="#" id="y73" data-value="1931">1931</a></li>
																													<li><a href="#" id="y74" data-value="1930">1930</a></li>
																													<li><a href="#" id="y75" data-value="1929">1929</a></li>
																													<li><a href="#" id="y76" data-value="1928">1928</a></li>
																													<li><a href="#" id="y77" data-value="1927">1927</a></li>
																													<li><a href="#" id="y78" data-value="1926">1926</a></li>
																													<li><a href="#" id="y79" data-value="1925">1925</a></li>
																													<li><a href="#" id="y80" data-value="1924">1924</a></li>
																													<li><a href="#" id="y81" data-value="1923">1923</a></li>
																													<li><a href="#" id="y82" data-value="1922">1922</a></li>
																													<li><a href="#" id="y83" data-value="1921">1921</a></li>
																													<li><a href="#" id="y84" data-value="1920">1920</a></li>
																													<li><a href="#" id="y85" data-value="1919">1919</a></li>
																													<li><a href="#" id="y86" data-value="1918">1918</a></li>
																													<li><a href="#" id="y87" data-value="1917">1917</a></li>
																													<li><a href="#" id="y88" data-value="1916">1916</a></li>
																													<li><a href="#" id="y89" data-value="1915">1915</a></li>
																													<li><a href="#" id="y90" data-value="1914">1914</a></li>
																													<li><a href="#" id="y91" data-value="1913">1913</a></li>
																													<li><a href="#" id="y92" data-value="1912">1912</a></li>
																													<li><a href="#" id="y93" data-value="1911">1911</a></li>
																													<li><a href="#" id="y94" data-value="1910">1910</a></li>
																													<li><a href="#" id="y95" data-value="1909">1909</a></li>
																													<li><a href="#" id="y96" data-value="1908">1908</a></li>
																													<li><a href="#" id="y97" data-value="1907">1907</a></li>
																													<li><a href="#" id="y98" data-value="1906">1906</a></li>
																													<li><a href="#" id="y99" data-value="1905">1905</a></li>
																													<li><a href="#" id="y100" data-value="1904">1904</a></li>
																													<li><a href="#" id="y101" data-value="1903">1903</a></li>
																													<li><a href="#" id="y102" data-value="1902">1902</a></li>
																													<li><a href="#" id="y103" data-value="1901">1901</a></li>
																													<li><a href="#" id="y104" data-value="1900">1900</a></li>
																													<li><a href="#" id="y105" data-value="1899">1899</a></li>
																													<li><a href="#" id="y106" data-value="1898">1898</a></li>
																													<li><a href="#" id="y107" data-value="1897">1897</a></li>
																													<li><a href="#" id="y108" data-value="1896">1896</a></li>
																													<li><a href="#" id="y109" data-value="1895">1895</a></li>
																													<li><a href="#" id="y110" data-value="1894">1894</a></li>
																												</ul>
													</div>
													
													
													
													<div class="nlogin_select" id="nlogin_month">
														<input type="hidden" id="nlogin_month_value" name="birth_m">
														<p data-value="choice"><span>월</span></p>
														<ul>
																													<li><a href="#" id="m1" data-value="1">1</a></li>
																													<li><a href="#" id="m2" data-value="2">2</a></li>
																													<li><a href="#" id="m3" data-value="3">3</a></li>
																													<li><a href="#" id="m4" data-value="4">4</a></li>
																													<li><a href="#" id="m5" data-value="5">5</a></li>
																													<li><a href="#" id="m6" data-value="6">6</a></li>
																													<li><a href="#" id="m7" data-value="7">7</a></li>
																													<li><a href="#" id="m8" data-value="8">8</a></li>
																													<li><a href="#" id="m9" data-value="9">9</a></li>
																													<li><a href="#" id="m10" data-value="10">10</a></li>
																													<li><a href="#" id="m11" data-value="11">11</a></li>
																													<li><a href="#" id="m12" data-value="12">12</a></li>
																												</ul>
													</div>
													<div class="nlogin_select" id="nlogin_day">
														<input type="hidden" id="nlogin_day_value" name="birth_d">
														<p data-value="choice"><span>일</span></p>
														<ul>
																													<li><a href="#" id="d1" data-value="1">1</a></li>
																													<li><a href="#" id="d2" data-value="2">2</a></li>
																													<li><a href="#" id="d3" data-value="3">3</a></li>
																													<li><a href="#" id="d4" data-value="4">4</a></li>
																													<li><a href="#" id="d5" data-value="5">5</a></li>
																													<li><a href="#" id="d6" data-value="6">6</a></li>
																													<li><a href="#" id="d7" data-value="7">7</a></li>
																													<li><a href="#" id="d8" data-value="8">8</a></li>
																													<li><a href="#" id="d9" data-value="9">9</a></li>
																													<li><a href="#" id="d10" data-value="10">10</a></li>
																													<li><a href="#" id="d11" data-value="11">11</a></li>
																													<li><a href="#" id="d12" data-value="12">12</a></li>
																													<li><a href="#" id="d13" data-value="13">13</a></li>
																													<li><a href="#" id="d14" data-value="14">14</a></li>
																													<li><a href="#" id="d15" data-value="15">15</a></li>
																													<li><a href="#" id="d16" data-value="16">16</a></li>
																													<li><a href="#" id="d17" data-value="17">17</a></li>
																													<li><a href="#" id="d18" data-value="18">18</a></li>
																													<li><a href="#" id="d19" data-value="19">19</a></li>
																													<li><a href="#" id="d20" data-value="20">20</a></li>
																													<li><a href="#" id="d21" data-value="21">21</a></li>
																													<li><a href="#" id="d22" data-value="22">22</a></li>
																													<li><a href="#" id="d23" data-value="23">23</a></li>
																													<li><a href="#" id="d24" data-value="24">24</a></li>
																													<li><a href="#" id="d25" data-value="25">25</a></li>
																													<li><a href="#" id="d26" data-value="26">26</a></li>
																													<li><a href="#" id="d27" data-value="27">27</a></li>
																													<li><a href="#" id="d28" data-value="28">28</a></li>
																													<li><a href="#" id="d29" data-value="29">29</a></li>
																													<li><a href="#" id="d30" data-value="30">30</a></li>
																													<li><a href="#" id="d31" data-value="31">31</a></li>
																												</ul>
													</div>

													
													<div class="nlogin_select" id="nlogin_month">
														<input type="hidden" id="nlogin_month_value" name="birth_m">
														<p data-value="choice"><span>시</span></p>
														<ul>
																													<li><a href="#" id="m1" data-value="1">1</a></li>
																													<li><a href="#" id="m2" data-value="2">2</a></li>
																													<li><a href="#" id="m3" data-value="3">3</a></li>
																													<li><a href="#" id="m4" data-value="4">4</a></li>
																													<li><a href="#" id="m5" data-value="5">5</a></li>
																													<li><a href="#" id="m6" data-value="6">6</a></li>
																													<li><a href="#" id="m7" data-value="7">7</a></li>
																													<li><a href="#" id="m8" data-value="8">8</a></li>
																													<li><a href="#" id="m9" data-value="9">9</a></li>
																													<li><a href="#" id="m10" data-value="10">10</a></li>
																													<li><a href="#" id="m11" data-value="11">11</a></li>
																													<li><a href="#" id="m12" data-value="12">12</a></li>
																												</ul>
													</div>
													
													<div class="nlogin_select" id="nlogin_month">
														<input type="hidden" id="nlogin_month_value" name="birth_m">
														<p data-value="choice"><span>분</span></p>
														<ul>
																													<li><a href="#" id="m1" data-value="1">1</a></li>
																													<li><a href="#" id="m2" data-value="2">2</a></li>
																													<li><a href="#" id="m3" data-value="3">3</a></li>
																													<li><a href="#" id="m4" data-value="4">4</a></li>
																													<li><a href="#" id="m5" data-value="5">5</a></li>
																													<li><a href="#" id="m6" data-value="6">6</a></li>
																													<li><a href="#" id="m7" data-value="7">7</a></li>
																													<li><a href="#" id="m8" data-value="8">8</a></li>
																													<li><a href="#" id="m9" data-value="9">9</a></li>
																													<li><a href="#" id="m10" data-value="10">10</a></li>
																													<li><a href="#" id="m11" data-value="11">11</a></li>
																													<li><a href="#" id="m12" data-value="12">12</a></li>
																												</ul>
													</div>
													
													<div class="nlogin_select" id="nlogin_gender">
														<input type="hidden" id="nlogin_gender_value" name="c_person">
														<p data-value="choice"><span>남은 좌석</span></p>
														<ul>
															<li><a href="#" data-value="1">1</a></li>
															<li><a href="#" data-value="2">2</a></li>
															<li><a href="#" data-value="3">3</a></li>
															<li><a href="#" data-value="4">4</a></li>
															<li><a href="#" data-value="5">5</a></li>
															<li><a href="#" data-value="6">6</a></li>
														</ul>
													</div>
													
												</div>
											</td>
										</tr>
										<tr>
											<td colspan="2">
											<div class="nlogin_date_info">도착일시는 다른 이용자를 위해 꼭 필요한 정보입니다.</div>
												<div class="nlogin_select" id="nlogin_year">
														
												
														<input type="hidden" id="nlogin_year_value" name="birth_y">
														
														<p data-value="choice"><span>년도</span></p>
														<ul>
																													<li><a href="#" id="y1" data-value="2003">2003</a></li>
																													<li><a href="#" id="y2" data-value="2002">2002</a></li>
																													<li><a href="#" id="y3" data-value="2001">2001</a></li>
																													<li><a href="#" id="y4" data-value="2000">2000</a></li>
																													<li><a href="#" id="y5" data-value="1999">1999</a></li>
																													<li><a href="#" id="y6" data-value="1998">1998</a></li>
																													<li><a href="#" id="y7" data-value="1997">1997</a></li>
																													<li><a href="#" id="y8" data-value="1996">1996</a></li>
																													<li><a href="#" id="y9" data-value="1995">1995</a></li>
																													<li><a href="#" id="y10" data-value="1994">1994</a></li>
																													<li><a href="#" id="y11" data-value="1993">1993</a></li>
																													<li><a href="#" id="y12" data-value="1992">1992</a></li>
																													<li><a href="#" id="y13" data-value="1991">1991</a></li>
																													<li><a href="#" id="y14" data-value="1990">1990</a></li>
																													<li><a href="#" id="y15" data-value="1989">1989</a></li>
																													<li><a href="#" id="y16" data-value="1988">1988</a></li>
																													<li><a href="#" id="y17" data-value="1987">1987</a></li>
																													<li><a href="#" id="y18" data-value="1986">1986</a></li>
																													<li><a href="#" id="y19" data-value="1985">1985</a></li>
																													<li><a href="#" id="y20" data-value="1984">1984</a></li>
																													<li><a href="#" id="y21" data-value="1983">1983</a></li>
																													<li><a href="#" id="y22" data-value="1982">1982</a></li>
																													<li><a href="#" id="y23" data-value="1981">1981</a></li>
																													<li><a href="#" id="y24" data-value="1980">1980</a></li>
																													<li><a href="#" id="y25" data-value="1979">1979</a></li>
																													<li><a href="#" id="y26" data-value="1978">1978</a></li>
																													<li><a href="#" id="y27" data-value="1977">1977</a></li>
																													<li><a href="#" id="y28" data-value="1976">1976</a></li>
																													<li><a href="#" id="y29" data-value="1975">1975</a></li>
																													<li><a href="#" id="y30" data-value="1974">1974</a></li>
																													<li><a href="#" id="y31" data-value="1973">1973</a></li>
																													<li><a href="#" id="y32" data-value="1972">1972</a></li>
																													<li><a href="#" id="y33" data-value="1971">1971</a></li>
																													<li><a href="#" id="y34" data-value="1970">1970</a></li>
																													<li><a href="#" id="y35" data-value="1969">1969</a></li>
																													<li><a href="#" id="y36" data-value="1968">1968</a></li>
																													<li><a href="#" id="y37" data-value="1967">1967</a></li>
																													<li><a href="#" id="y38" data-value="1966">1966</a></li>
																													<li><a href="#" id="y39" data-value="1965">1965</a></li>
																													<li><a href="#" id="y40" data-value="1964">1964</a></li>
																													<li><a href="#" id="y41" data-value="1963">1963</a></li>
																													<li><a href="#" id="y42" data-value="1962">1962</a></li>
																													<li><a href="#" id="y43" data-value="1961">1961</a></li>
																													<li><a href="#" id="y44" data-value="1960">1960</a></li>
																													<li><a href="#" id="y45" data-value="1959">1959</a></li>
																													<li><a href="#" id="y46" data-value="1958">1958</a></li>
																													<li><a href="#" id="y47" data-value="1957">1957</a></li>
																													<li><a href="#" id="y48" data-value="1956">1956</a></li>
																													<li><a href="#" id="y49" data-value="1955">1955</a></li>
																													<li><a href="#" id="y50" data-value="1954">1954</a></li>
																													<li><a href="#" id="y51" data-value="1953">1953</a></li>
																													<li><a href="#" id="y52" data-value="1952">1952</a></li>
																													<li><a href="#" id="y53" data-value="1951">1951</a></li>
																													<li><a href="#" id="y54" data-value="1950">1950</a></li>
																													<li><a href="#" id="y55" data-value="1949">1949</a></li>
																													<li><a href="#" id="y56" data-value="1948">1948</a></li>
																													<li><a href="#" id="y57" data-value="1947">1947</a></li>
																													<li><a href="#" id="y58" data-value="1946">1946</a></li>
																													<li><a href="#" id="y59" data-value="1945">1945</a></li>
																													<li><a href="#" id="y60" data-value="1944">1944</a></li>
																													<li><a href="#" id="y61" data-value="1943">1943</a></li>
																													<li><a href="#" id="y62" data-value="1942">1942</a></li>
																													<li><a href="#" id="y63" data-value="1941">1941</a></li>
																													<li><a href="#" id="y64" data-value="1940">1940</a></li>
																													<li><a href="#" id="y65" data-value="1939">1939</a></li>
																													<li><a href="#" id="y66" data-value="1938">1938</a></li>
																													<li><a href="#" id="y67" data-value="1937">1937</a></li>
																													<li><a href="#" id="y68" data-value="1936">1936</a></li>
																													<li><a href="#" id="y69" data-value="1935">1935</a></li>
																													<li><a href="#" id="y70" data-value="1934">1934</a></li>
																													<li><a href="#" id="y71" data-value="1933">1933</a></li>
																													<li><a href="#" id="y72" data-value="1932">1932</a></li>
																													<li><a href="#" id="y73" data-value="1931">1931</a></li>
																													<li><a href="#" id="y74" data-value="1930">1930</a></li>
																													<li><a href="#" id="y75" data-value="1929">1929</a></li>
																													<li><a href="#" id="y76" data-value="1928">1928</a></li>
																													<li><a href="#" id="y77" data-value="1927">1927</a></li>
																													<li><a href="#" id="y78" data-value="1926">1926</a></li>
																													<li><a href="#" id="y79" data-value="1925">1925</a></li>
																													<li><a href="#" id="y80" data-value="1924">1924</a></li>
																													<li><a href="#" id="y81" data-value="1923">1923</a></li>
																													<li><a href="#" id="y82" data-value="1922">1922</a></li>
																													<li><a href="#" id="y83" data-value="1921">1921</a></li>
																													<li><a href="#" id="y84" data-value="1920">1920</a></li>
																													<li><a href="#" id="y85" data-value="1919">1919</a></li>
																													<li><a href="#" id="y86" data-value="1918">1918</a></li>
																													<li><a href="#" id="y87" data-value="1917">1917</a></li>
																													<li><a href="#" id="y88" data-value="1916">1916</a></li>
																													<li><a href="#" id="y89" data-value="1915">1915</a></li>
																													<li><a href="#" id="y90" data-value="1914">1914</a></li>
																													<li><a href="#" id="y91" data-value="1913">1913</a></li>
																													<li><a href="#" id="y92" data-value="1912">1912</a></li>
																													<li><a href="#" id="y93" data-value="1911">1911</a></li>
																													<li><a href="#" id="y94" data-value="1910">1910</a></li>
																													<li><a href="#" id="y95" data-value="1909">1909</a></li>
																													<li><a href="#" id="y96" data-value="1908">1908</a></li>
																													<li><a href="#" id="y97" data-value="1907">1907</a></li>
																													<li><a href="#" id="y98" data-value="1906">1906</a></li>
																													<li><a href="#" id="y99" data-value="1905">1905</a></li>
																													<li><a href="#" id="y100" data-value="1904">1904</a></li>
																													<li><a href="#" id="y101" data-value="1903">1903</a></li>
																													<li><a href="#" id="y102" data-value="1902">1902</a></li>
																													<li><a href="#" id="y103" data-value="1901">1901</a></li>
																													<li><a href="#" id="y104" data-value="1900">1900</a></li>
																													<li><a href="#" id="y105" data-value="1899">1899</a></li>
																													<li><a href="#" id="y106" data-value="1898">1898</a></li>
																													<li><a href="#" id="y107" data-value="1897">1897</a></li>
																													<li><a href="#" id="y108" data-value="1896">1896</a></li>
																													<li><a href="#" id="y109" data-value="1895">1895</a></li>
																													<li><a href="#" id="y110" data-value="1894">1894</a></li>
																												</ul>
													</div>
													
																								<div class="nlogin_select" id="nlogin_month">
														<input type="hidden" id="nlogin_month_value" name="birth_m">
														<p data-value="choice"><span>월</span></p>
														<ul>
																													<li><a href="#" id="m1" data-value="1">1</a></li>
																													<li><a href="#" id="m2" data-value="2">2</a></li>
																													<li><a href="#" id="m3" data-value="3">3</a></li>
																													<li><a href="#" id="m4" data-value="4">4</a></li>
																													<li><a href="#" id="m5" data-value="5">5</a></li>
																													<li><a href="#" id="m6" data-value="6">6</a></li>
																													<li><a href="#" id="m7" data-value="7">7</a></li>
																													<li><a href="#" id="m8" data-value="8">8</a></li>
																													<li><a href="#" id="m9" data-value="9">9</a></li>
																													<li><a href="#" id="m10" data-value="10">10</a></li>
																													<li><a href="#" id="m11" data-value="11">11</a></li>
																													<li><a href="#" id="m12" data-value="12">12</a></li>
																												</ul>
													</div>
													<div class="nlogin_select" id="nlogin_day">
														<input type="hidden" id="nlogin_day_value" name="birth_d">
														<p data-value="choice"><span>일</span></p>
														<ul>
																													<li><a href="#" id="d1" data-value="1">1</a></li>
																													<li><a href="#" id="d2" data-value="2">2</a></li>
																													<li><a href="#" id="d3" data-value="3">3</a></li>
																													<li><a href="#" id="d4" data-value="4">4</a></li>
																													<li><a href="#" id="d5" data-value="5">5</a></li>
																													<li><a href="#" id="d6" data-value="6">6</a></li>
																													<li><a href="#" id="d7" data-value="7">7</a></li>
																													<li><a href="#" id="d8" data-value="8">8</a></li>
																													<li><a href="#" id="d9" data-value="9">9</a></li>
																													<li><a href="#" id="d10" data-value="10">10</a></li>
																													<li><a href="#" id="d11" data-value="11">11</a></li>
																													<li><a href="#" id="d12" data-value="12">12</a></li>
																													<li><a href="#" id="d13" data-value="13">13</a></li>
																													<li><a href="#" id="d14" data-value="14">14</a></li>
																													<li><a href="#" id="d15" data-value="15">15</a></li>
																													<li><a href="#" id="d16" data-value="16">16</a></li>
																													<li><a href="#" id="d17" data-value="17">17</a></li>
																													<li><a href="#" id="d18" data-value="18">18</a></li>
																													<li><a href="#" id="d19" data-value="19">19</a></li>
																													<li><a href="#" id="d20" data-value="20">20</a></li>
																													<li><a href="#" id="d21" data-value="21">21</a></li>
																													<li><a href="#" id="d22" data-value="22">22</a></li>
																													<li><a href="#" id="d23" data-value="23">23</a></li>
																													<li><a href="#" id="d24" data-value="24">24</a></li>
																													<li><a href="#" id="d25" data-value="25">25</a></li>
																													<li><a href="#" id="d26" data-value="26">26</a></li>
																													<li><a href="#" id="d27" data-value="27">27</a></li>
																													<li><a href="#" id="d28" data-value="28">28</a></li>
																													<li><a href="#" id="d29" data-value="29">29</a></li>
																													<li><a href="#" id="d30" data-value="30">30</a></li>
																													<li><a href="#" id="d31" data-value="31">31</a></li>
																												</ul>
													</div>

													
													<div class="nlogin_select" id="nlogin_month">
														<input type="hidden" id="nlogin_month_value" name="birth_m">
														<p data-value="choice"><span>시</span></p>
														<ul>
																													<li><a href="#" id="m1" data-value="1">1</a></li>
																													<li><a href="#" id="m2" data-value="2">2</a></li>
																													<li><a href="#" id="m3" data-value="3">3</a></li>
																													<li><a href="#" id="m4" data-value="4">4</a></li>
																													<li><a href="#" id="m5" data-value="5">5</a></li>
																													<li><a href="#" id="m6" data-value="6">6</a></li>
																													<li><a href="#" id="m7" data-value="7">7</a></li>
																													<li><a href="#" id="m8" data-value="8">8</a></li>
																													<li><a href="#" id="m9" data-value="9">9</a></li>
																													<li><a href="#" id="m10" data-value="10">10</a></li>
																													<li><a href="#" id="m11" data-value="11">11</a></li>
																													<li><a href="#" id="m12" data-value="12">12</a></li>
																												</ul>
													</div>
													
													<div class="nlogin_select" id="nlogin_month">
														<input type="hidden" id="nlogin_month_value" name="birth_m">
														<p data-value="choice"><span>분</span></p>
														<ul>
																													<li><a href="#" id="m1" data-value="1">1</a></li>
																													<li><a href="#" id="m2" data-value="2">2</a></li>
																													<li><a href="#" id="m3" data-value="3">3</a></li>
																													<li><a href="#" id="m4" data-value="4">4</a></li>
																													<li><a href="#" id="m5" data-value="5">5</a></li>
																													<li><a href="#" id="m6" data-value="6">6</a></li>
																													<li><a href="#" id="m7" data-value="7">7</a></li>
																													<li><a href="#" id="m8" data-value="8">8</a></li>
																													<li><a href="#" id="m9" data-value="9">9</a></li>
																													<li><a href="#" id="m10" data-value="10">10</a></li>
																													<li><a href="#" id="m11" data-value="11">11</a></li>
																													<li><a href="#" id="m12" data-value="12">12</a></li>
																												</ul>
													</div>

											</td>
										</tr>
										<tr>
											<td colspan="2" class="last">
												<p class="nlogin_date_info">생년월일과 성별은 이메일/비밀번호 분실하였을경우 본인확인을 위해 꼭 필요한 정보입니다.</p>
												<div class="nlogin_form_section">
													<div class="nlogin_select" id="nlogin_year">
														<input type="hidden" id="nlogin_year_value" name="birth_y">
														<p data-value="choice"><span>생일 년도</span></p>
														<ul>
																													<li><a href="#" id="y1" data-value="2003">2003</a></li>
																													<li><a href="#" id="y2" data-value="2002">2002</a></li>
																													<li><a href="#" id="y3" data-value="2001">2001</a></li>
																													<li><a href="#" id="y4" data-value="2000">2000</a></li>
																													<li><a href="#" id="y5" data-value="1999">1999</a></li>
																													<li><a href="#" id="y6" data-value="1998">1998</a></li>
																													<li><a href="#" id="y7" data-value="1997">1997</a></li>
																													<li><a href="#" id="y8" data-value="1996">1996</a></li>
																													<li><a href="#" id="y9" data-value="1995">1995</a></li>
																													<li><a href="#" id="y10" data-value="1994">1994</a></li>
																													<li><a href="#" id="y11" data-value="1993">1993</a></li>
																													<li><a href="#" id="y12" data-value="1992">1992</a></li>
																													<li><a href="#" id="y13" data-value="1991">1991</a></li>
																													<li><a href="#" id="y14" data-value="1990">1990</a></li>
																													<li><a href="#" id="y15" data-value="1989">1989</a></li>
																													<li><a href="#" id="y16" data-value="1988">1988</a></li>
																													<li><a href="#" id="y17" data-value="1987">1987</a></li>
																													<li><a href="#" id="y18" data-value="1986">1986</a></li>
																													<li><a href="#" id="y19" data-value="1985">1985</a></li>
																													<li><a href="#" id="y20" data-value="1984">1984</a></li>
																													<li><a href="#" id="y21" data-value="1983">1983</a></li>
																													<li><a href="#" id="y22" data-value="1982">1982</a></li>
																													<li><a href="#" id="y23" data-value="1981">1981</a></li>
																													<li><a href="#" id="y24" data-value="1980">1980</a></li>
																													<li><a href="#" id="y25" data-value="1979">1979</a></li>
																													<li><a href="#" id="y26" data-value="1978">1978</a></li>
																													<li><a href="#" id="y27" data-value="1977">1977</a></li>
																													<li><a href="#" id="y28" data-value="1976">1976</a></li>
																													<li><a href="#" id="y29" data-value="1975">1975</a></li>
																													<li><a href="#" id="y30" data-value="1974">1974</a></li>
																													<li><a href="#" id="y31" data-value="1973">1973</a></li>
																													<li><a href="#" id="y32" data-value="1972">1972</a></li>
																													<li><a href="#" id="y33" data-value="1971">1971</a></li>
																													<li><a href="#" id="y34" data-value="1970">1970</a></li>
																													<li><a href="#" id="y35" data-value="1969">1969</a></li>
																													<li><a href="#" id="y36" data-value="1968">1968</a></li>
																													<li><a href="#" id="y37" data-value="1967">1967</a></li>
																													<li><a href="#" id="y38" data-value="1966">1966</a></li>
																													<li><a href="#" id="y39" data-value="1965">1965</a></li>
																													<li><a href="#" id="y40" data-value="1964">1964</a></li>
																													<li><a href="#" id="y41" data-value="1963">1963</a></li>
																													<li><a href="#" id="y42" data-value="1962">1962</a></li>
																													<li><a href="#" id="y43" data-value="1961">1961</a></li>
																													<li><a href="#" id="y44" data-value="1960">1960</a></li>
																													<li><a href="#" id="y45" data-value="1959">1959</a></li>
																													<li><a href="#" id="y46" data-value="1958">1958</a></li>
																													<li><a href="#" id="y47" data-value="1957">1957</a></li>
																													<li><a href="#" id="y48" data-value="1956">1956</a></li>
																													<li><a href="#" id="y49" data-value="1955">1955</a></li>
																													<li><a href="#" id="y50" data-value="1954">1954</a></li>
																													<li><a href="#" id="y51" data-value="1953">1953</a></li>
																													<li><a href="#" id="y52" data-value="1952">1952</a></li>
																													<li><a href="#" id="y53" data-value="1951">1951</a></li>
																													<li><a href="#" id="y54" data-value="1950">1950</a></li>
																													<li><a href="#" id="y55" data-value="1949">1949</a></li>
																													<li><a href="#" id="y56" data-value="1948">1948</a></li>
																													<li><a href="#" id="y57" data-value="1947">1947</a></li>
																													<li><a href="#" id="y58" data-value="1946">1946</a></li>
																													<li><a href="#" id="y59" data-value="1945">1945</a></li>
																													<li><a href="#" id="y60" data-value="1944">1944</a></li>
																													<li><a href="#" id="y61" data-value="1943">1943</a></li>
																													<li><a href="#" id="y62" data-value="1942">1942</a></li>
																													<li><a href="#" id="y63" data-value="1941">1941</a></li>
																													<li><a href="#" id="y64" data-value="1940">1940</a></li>
																													<li><a href="#" id="y65" data-value="1939">1939</a></li>
																													<li><a href="#" id="y66" data-value="1938">1938</a></li>
																													<li><a href="#" id="y67" data-value="1937">1937</a></li>
																													<li><a href="#" id="y68" data-value="1936">1936</a></li>
																													<li><a href="#" id="y69" data-value="1935">1935</a></li>
																													<li><a href="#" id="y70" data-value="1934">1934</a></li>
																													<li><a href="#" id="y71" data-value="1933">1933</a></li>
																													<li><a href="#" id="y72" data-value="1932">1932</a></li>
																													<li><a href="#" id="y73" data-value="1931">1931</a></li>
																													<li><a href="#" id="y74" data-value="1930">1930</a></li>
																													<li><a href="#" id="y75" data-value="1929">1929</a></li>
																													<li><a href="#" id="y76" data-value="1928">1928</a></li>
																													<li><a href="#" id="y77" data-value="1927">1927</a></li>
																													<li><a href="#" id="y78" data-value="1926">1926</a></li>
																													<li><a href="#" id="y79" data-value="1925">1925</a></li>
																													<li><a href="#" id="y80" data-value="1924">1924</a></li>
																													<li><a href="#" id="y81" data-value="1923">1923</a></li>
																													<li><a href="#" id="y82" data-value="1922">1922</a></li>
																													<li><a href="#" id="y83" data-value="1921">1921</a></li>
																													<li><a href="#" id="y84" data-value="1920">1920</a></li>
																													<li><a href="#" id="y85" data-value="1919">1919</a></li>
																													<li><a href="#" id="y86" data-value="1918">1918</a></li>
																													<li><a href="#" id="y87" data-value="1917">1917</a></li>
																													<li><a href="#" id="y88" data-value="1916">1916</a></li>
																													<li><a href="#" id="y89" data-value="1915">1915</a></li>
																													<li><a href="#" id="y90" data-value="1914">1914</a></li>
																													<li><a href="#" id="y91" data-value="1913">1913</a></li>
																													<li><a href="#" id="y92" data-value="1912">1912</a></li>
																													<li><a href="#" id="y93" data-value="1911">1911</a></li>
																													<li><a href="#" id="y94" data-value="1910">1910</a></li>
																													<li><a href="#" id="y95" data-value="1909">1909</a></li>
																													<li><a href="#" id="y96" data-value="1908">1908</a></li>
																													<li><a href="#" id="y97" data-value="1907">1907</a></li>
																													<li><a href="#" id="y98" data-value="1906">1906</a></li>
																													<li><a href="#" id="y99" data-value="1905">1905</a></li>
																													<li><a href="#" id="y100" data-value="1904">1904</a></li>
																													<li><a href="#" id="y101" data-value="1903">1903</a></li>
																													<li><a href="#" id="y102" data-value="1902">1902</a></li>
																													<li><a href="#" id="y103" data-value="1901">1901</a></li>
																													<li><a href="#" id="y104" data-value="1900">1900</a></li>
																													<li><a href="#" id="y105" data-value="1899">1899</a></li>
																													<li><a href="#" id="y106" data-value="1898">1898</a></li>
																													<li><a href="#" id="y107" data-value="1897">1897</a></li>
																													<li><a href="#" id="y108" data-value="1896">1896</a></li>
																													<li><a href="#" id="y109" data-value="1895">1895</a></li>
																													<li><a href="#" id="y110" data-value="1894">1894</a></li>
																												</ul>
													</div>
													<div class="nlogin_select" id="nlogin_month">
														<input type="hidden" id="nlogin_month_value" name="birth_m">
														<p data-value="choice"><span>월</span></p>
														<ul>
																													<li><a href="#" id="m1" data-value="1">1</a></li>
																													<li><a href="#" id="m2" data-value="2">2</a></li>
																													<li><a href="#" id="m3" data-value="3">3</a></li>
																													<li><a href="#" id="m4" data-value="4">4</a></li>
																													<li><a href="#" id="m5" data-value="5">5</a></li>
																													<li><a href="#" id="m6" data-value="6">6</a></li>
																													<li><a href="#" id="m7" data-value="7">7</a></li>
																													<li><a href="#" id="m8" data-value="8">8</a></li>
																													<li><a href="#" id="m9" data-value="9">9</a></li>
																													<li><a href="#" id="m10" data-value="10">10</a></li>
																													<li><a href="#" id="m11" data-value="11">11</a></li>
																													<li><a href="#" id="m12" data-value="12">12</a></li>
																												</ul>
													</div>
													<div class="nlogin_select" id="nlogin_day">
														<input type="hidden" id="nlogin_day_value" name="birth_d">
														<p data-value="choice"><span>일</span></p>
														<ul>
																													<li><a href="#" id="d1" data-value="1">1</a></li>
																													<li><a href="#" id="d2" data-value="2">2</a></li>
																													<li><a href="#" id="d3" data-value="3">3</a></li>
																													<li><a href="#" id="d4" data-value="4">4</a></li>
																													<li><a href="#" id="d5" data-value="5">5</a></li>
																													<li><a href="#" id="d6" data-value="6">6</a></li>
																													<li><a href="#" id="d7" data-value="7">7</a></li>
																													<li><a href="#" id="d8" data-value="8">8</a></li>
																													<li><a href="#" id="d9" data-value="9">9</a></li>
																													<li><a href="#" id="d10" data-value="10">10</a></li>
																													<li><a href="#" id="d11" data-value="11">11</a></li>
																													<li><a href="#" id="d12" data-value="12">12</a></li>
																													<li><a href="#" id="d13" data-value="13">13</a></li>
																													<li><a href="#" id="d14" data-value="14">14</a></li>
																													<li><a href="#" id="d15" data-value="15">15</a></li>
																													<li><a href="#" id="d16" data-value="16">16</a></li>
																													<li><a href="#" id="d17" data-value="17">17</a></li>
																													<li><a href="#" id="d18" data-value="18">18</a></li>
																													<li><a href="#" id="d19" data-value="19">19</a></li>
																													<li><a href="#" id="d20" data-value="20">20</a></li>
																													<li><a href="#" id="d21" data-value="21">21</a></li>
																													<li><a href="#" id="d22" data-value="22">22</a></li>
																													<li><a href="#" id="d23" data-value="23">23</a></li>
																													<li><a href="#" id="d24" data-value="24">24</a></li>
																													<li><a href="#" id="d25" data-value="25">25</a></li>
																													<li><a href="#" id="d26" data-value="26">26</a></li>
																													<li><a href="#" id="d27" data-value="27">27</a></li>
																													<li><a href="#" id="d28" data-value="28">28</a></li>
																													<li><a href="#" id="d29" data-value="29">29</a></li>
																													<li><a href="#" id="d30" data-value="30">30</a></li>
																													<li><a href="#" id="d31" data-value="31">31</a></li>
																												</ul>
													</div>
													<div class="nlogin_select" id="nlogin_gender">
														<input type="hidden" id="nlogin_gender_value" name="join_sex">
														<p data-value="choice"><span>성별</span></p>
														<ul>
															<li><a href="#" data-value="1">남</a></li>
															<li><a href="#" data-value="2">여</a></li>
														</ul>
													</div>
												</div>
											</td>
										</tr>

										</tbody>
									
									</table>
								</div>
								
							</div>

						</div>
						
						</div>
						
						</div>
						
						<div class="nlogin_join_center">
							<button class="nlogin_btn" type="submit">수정 하기</button>
					    </div>
</form>					

    <style>
       #map {
        height: 400px;
        width: 100%;

       }
       #calendar {
        height:600px;
        width: 50%;
       }
		#carpool_map{
		margin-left: 300px;
		}
		#footer{
		height: 30%;
		}

    </style>



    <script>

    var markerPosition;   
     var marker_zoom4=[];
     var marker_zoom5=[];
    
    
    function initMap() {
     // when zoom is 4, present location of france, belgium, germany, swiss.
      var franceLocation = {lat: 48.856667, lng: 2.350833};
      var belgiumLocation = {lat: 50.85, lng: 4.35};
      var germanyLocation = {lat: 52.500556, lng: 13.398889};
      var swissLocation = {lat: 46.95, lng: 7.45};
      
      // when zoom is 5, present marker of location of below cities.
      var parisLocation = {lat: 48.856667, lng: 2.350833};
      var niceLocation = {lat: 43.703333, lng: 7.266389};
      var brusselsLocation = {lat: 50.85, lng: 4.35};
      var berlinLocation = {lat: 52.518611, lng: 13.408056};
      var munichLocation = {lat: 48.133333, lng: 11.566667};
      var bernLocation = {lat: 46.95, lng: 7.45};
      var zurichLocation = {lat: 47.366667, lng: 8.55};
      
    
     
       marker_zoom4[0] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: franceLocation,
          map: map,
          title:'france'
        });
     marker_zoom4[1] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: belgiumLocation,
          map: map,
          title:'belguim'
        });
     marker_zoom4[2] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: germanyLocation,
          map: map,
          title:'germany'
        });
     marker_zoom4[3] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: swissLocation,
          map: map,
          title:'swiss'
       });
     
      marker_zoom5[0] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: parisLocation,
          map: map,
          title:'paris'
        });
     marker_zoom5[1] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: niceLocation,
          map: map,
          title:'nice'
        });
     marker_zoom5[2] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: brusselsLocation,
          map: map,
          title:'brussels'
        });
     marker_zoom5[3] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: berlinLocation,
          map: map,
          title:'berlin'
        });
     marker_zoom5[4] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: munichLocation,
          map: map,
          title:'munich'
        });
     marker_zoom5[5] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: bernLocation,
          map: map,
          title:'bern'
        });
     marker_zoom5[6] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: zurichLocation,
          map: map,
          title:'zurich'
        });
     
     function addItineraryOnCalendar(marker) {//마커를 마우스 
        //var title=marker.getTitle();
         var temp = new google.maps.Marker({
       });
           alert(typeof temp); 
         temp=marker;
        

        var position=temp.getPosition();
       alert(position);
        $('#calendar').fullCalendar( 'addEventSource', {
             events: [
                 {
                     title: 'Event1',
                     start: '2017-04-01'
                 },
                 {
                     title: 'Event2',
                     start: '2017-04-02'
                 }
             ],
             color: 'yellow',   // an option!
             textColor: 'black' // an option!
         } )
        }
     
     for(i=0;i<marker_zoom4.length;i++)
    {
       marker_zoom4[i].addListener('click', function() {
          alert('marker 4 click event');
          addItineraryOnCalendar(marker_zoom4[i]);

        });   
    }
 for(i=0;i<marker_zoom5.length;i++)
 {
    marker_zoom5[i].addListener('click', function() {
       alert('marker 5 click event');
       addItineraryOnCalendar(marker_zoom5[i]);

    });   
 }

      var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 4,
        center: parisLocation
      });

      map.addListener('zoom_changed', function() {
          if(map.getZoom()<5){

             if(marker_zoom5[0]!=null){
                for(i=0; i<7; i++){
                    marker_zoom5[i].setMap(null);
                 } 
             }
             for(i=0; i<4; i++){
             marker_zoom4[i].setMap(map);
             }
           }
          else if(map.getZoom()>=5){
             
          for(i=0; i<4; i++){
                marker_zoom4[i].setMap(null);
             }   
            for(i=0; i<7; i++){
                marker_zoom5[i].setMap(map);
             }
          }
        });
    }/* ------------------------initMap() 종료 --------------------------------------------------------*/


    

    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnrWQ2SHvedNrvdozheYo32pHwCbuvPgs&callback=initMap">
    </script>


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