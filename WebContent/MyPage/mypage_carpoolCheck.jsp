<%@page import="travel.carpool.model.CarpoolDao"%>
<%@page import="travel.carpool.model.Carpool"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%

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


<!-- common meta data -->
<title>가볼만한곳/맛집/숙박 정보, 항공/호텔 가격비교, 나만의 여행일정 | 여행의 모든 것, 위시빈</title>
<meta name="keywords" content="위시빈, 여행일정, 여행정보, 여행꿀팁, 세계여행정보, 국내여행정보, 해외여행정보, 여행팁, 자유여행, 자유여행준비, 가이드북, 지도, 추천일정, 테마여행, 명소, 스팟, 맛집, 쇼핑, 숙박, 호텔, 게스트하우스, 최저가 항공권 검색, 최저가 숙박 검색, 최저가 호텔 검색, 특가 항공권, 무료 항공 이벤트, 무료 호텔 이벤트, 여행Q&A, 여행후기, 홍콩, 마카오, 오사카, 후쿠오카, 도쿄, 타이베이, 베이징, 상하이, 칭다오, 싱가포르, 방콕, 푸껫, 보라카이, 코타 키나발루, 파리, 로마, 런던, 바르셀로나, 크로아티아, 이스탄불, 뉴욕, 하와이, 미서부, 괌, 시드니, 제주, 타이중, 가오슝">
<meta name="description" content="궁금한 여행정보, 위시빈에 다 있다! 1천 개 이상의 전 세계 여행꿀팁 · 25만 개의 자유 여행일정 · 40만 개의 전 세계 가볼만한 곳, 맛집, 숙박 정보 · 여행자들이 직접 남긴 100만 개의 리뷰/후기/꿀팁 · 항공, 호텔 가격비교 · 나만의 여행일정 계획하기"/>
<link rel="canonical" href="https://www.wishbeen.co.kr/">
<meta name="url" content=https://www.wishbeen.co.kr/>
<meta name="keywords" content="">
<meta name="subject" content="가볼만한곳/맛집/숙박 정보, 항공/호텔 가격비교, 나만의 여행일정">
<meta name="googlebot" content="index,follow">


<style type="text/css">
  body, pre {
    font-family: "맑은 고딕","Malgun Gothic","Helvetica Neue","Apple SD Gothic Neo",Helvetica,Arial,"Apple Gothic","돋움",Dotum,sans-serif!important;
  }

  .if-me{
    display: none !important;
  }

</style>


<script type="text/javascript">
  function snsLoginHandler(){
    window.location.reload();
  }
</script>



<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage_css/city-main-styles_mypage.css">
	

</head>
<body>


<div class="page-container">
  <!-- {header -->
  <div class="header">
    <div class="main-nav-con">
      <p class="wishbeen-logo"><span>세상의 모든 여행, 위시빈</span></p>

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



<div id="search_tab_dim" class="bg hide"></div>

<div class="main-tabs">
    <div class="tabs-list">
        <ul id="menu_tab_list">
            <li><a data-tab="home" >HOME</a></li>
            <li><a data-tab="hotdeal" >동행</a></li>
            <li><a data-tab="specialTip" >카풀</a></li>
            <li><a data-tab="community" >물품교환</a></li>
            <li><a data-tab="plan" >커뮤니티</a></li>
            <li><a data-tab="attraction" >블로그</a></li>

        </ul><!-- e// tabs -->
    </div><!-- e//tabs-list -->

   <!-- e//search-box -->
</div><!-- e//main-tabs -->

	<br>
	<div class="form_body">
		<form  class="join_form">
		        <div class="present">
            <div class="tabs-list">
                
                <ul class="tabs-list">
    
        
            <li><a href="/city?serviceType=global&amp;tab=hotdeal" class="first-tag active"><span>마이페이지</span></a></li> 
            <li><a href="/city?serviceType=global&amp;tab=hotdeal&amp;curationTag=5d1504d8bebfc81e" data-id="5d1504d8bebfc81e" class=""><span>내 정보 수정</span></a></li>
            <li><a href="/city?serviceType=global&amp;tab=hotdeal&amp;curationTag=2d8eef384cefda06" data-id="2d8eef384cefda06" class=""><span>내 동행 조회</span></a></li>
            <li><a href="/city?serviceType=global&amp;tab=hotdeal&amp;curationTag=f9188662257e085d" data-id="f9188662257e085d" class=""><span>내 카풀조회</span></a></li>
            <li><a href="/city?serviceType=global&amp;tab=hotdeal&amp;curationTag=f9188662257e085d" data-id="f9188662257e085d" class=""><span>내 상품조회</span></a></li>
            
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
			<fieldset>
				<legend>카풀 등록 현황</legend>
				
            <table class="primary_table">
            <tr>
            <th>이름</th>
            <th>출발</th>
            <th>가격</th>
            <th>출발시간</th>
            <th>남은인원</th>
            <th>주소</th> 
            <th>수정</th> 
            <th>삭제</th> 
            </tr>
	<c:forEach var="carpool" items="${list}">
      <tr height="30">
         <td align="center">${carpool.c_num }</td>
         <td align="center">${carpool.start_lati }></td>
         <td align="center">${carpool.c_price }</td>
         <td align="center">${carpool.c_date }</td>
         <td align="center">${carpool.c_person }</td>
         <td align="center">${carpool.c_dept_time }</td>
         <td align="center"><button type = "submit" onclick="fn_update()"class = "nlogin_btn">수정</button></td>
         <td align="center"><input type="button" value="삭제" onclick="location.href='carpoolDelete.mypage?c_num=${carpool.c_num } '" class="nlogin_btn"></td>
         
         
                  
         </tr>
         </c:forEach>
      </table>
			</fieldset>
			
			
			<fieldset>
			<legend>카풀 구매현황</legend>
            <table class="primary_table">
            <tr>
            <th>이름</th>
            <th>출발일</th>
            <th>출발시간</th>
            <th>남은인원</th>
            <th>가격</th> 
            <th>주소</th> 
            </tr>
            <tr>
            <td>박윤기</td>
            <td>실험용</td>
            <td>DB되면</td>
            <td>여기</td>
            <td>추가</td>
            <td>하면됨</td>
            </table>
			
					<div class="nlogin_join_center">
		<button type = "submit" class = "nlogin_btn">취소</button>
		</div>
			</fieldset>


		
		
		</form>


	</div>

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