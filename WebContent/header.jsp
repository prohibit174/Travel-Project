<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
  body, pre {
    font-family: "맑은 고딕","Malgun Gothic","Helvetica Neue","Apple SD Gothic Neo",Helvetica,Arial,"Apple Gothic","돋움",Dotum,sans-serif!important;
  }

  .if-me{
    display: none !important;
  }

</style>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/carpool_css/city-main-styles.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/carpool_css/carpoolJoin.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/carpool_css/carpoolJoin2.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/carpool_css/carpoolJoin3.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/carpool_css/carpoolJoin4.css" />

<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <!-- {header -->
  <div class="header">
    <div class="main-nav-con">
      <p class="wishbeen-logo"><span>세상의 모든 여행, 위시빈</span></p>

		<div id="frames">
			<span>${member_id}</span>
		</div>
		
      <div class="nav-login-search">
        <a class="btn-new-plan">로그인</a>
        <div class="login-and-profile">
          
          <div>
            <a href="JoinForm.users" id="nav-btn-about"  >회원가입</a>
            <a href = "main.mypage" id="nav-login-btn" class="nav-btn-login">마이페이지</a>
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

<div id="search_tab_dim" class="bg hide"></div>

<div class="main-tabs">
    <div class="tabs-list">
        <ul id="menu_tab_list">
            <li><a href="home.main" >HOME</a></li>
            <li><a data-tab="hotdeal" >동행</a></li>
            <li><a href="main.carpool" >카풀</a></li>
            <li><a data-tab="" >물품교환</a></li>
            <li><a data-tab="plan" >커뮤니티</a></li>
            <li><a data-tab="attraction" >블로그</a></li>

        </ul><!-- e// tabs -->
    </div><!-- e//tabs-list -->

   <!-- e//search-box -->
</div><!-- e//main-tabs -->
</body>
</html>