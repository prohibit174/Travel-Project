<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/users_css/city-main-styles_join.css?version=20170502">


<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%@include file="../header.jsp" %>
<body>
 <div class="present">
            <div class="tabs-list">
                
                <ul class="tabs-list">
    
        
            <li><a href="main.mypage" class="first-tag active"><span>마이페이지</span></a></li> 
            <li><a href="main.mypage"  class=""><span>내 정보 수정</span></a></li>
            <li><a href="/city?serviceType=global&amp;tab=hotdeal&amp;curationTag=2d8eef384cefda06" class=""><span>내 동행 조회</span></a></li>
            <li><a href="carpoolCheck.mypage" class=""><span>내 카풀조회</span></a></li>
            <li><a href="/city?serviceType=global&amp;tab=hotdeal&amp;curationTag=f9188662257e085d"  class=""><span>내 상품조회</span></a></li>
            
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
            </div> <!-- present -->

<form action="UpdateUserAction.mypage">
개인 정보 보호를 위해 비밀번호를 입력해주세요.<br><br><br>
<!-- 아이디 입력 <input type = "text" id = "u_id"><br><br> -->
비밀번호 입력&nbsp;&nbsp;<input type = "password" id = "u_pwd" name = "u_pwd"><br><br>
<input type = "submit" value = "회원정보 수정" class = "nlogin_btn">
<!-- http://doublesprogramming.tistory.com/94 -->
</form>
</body>
</html>