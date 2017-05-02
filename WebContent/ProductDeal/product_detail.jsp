<%@page import="travel.product.model.Product"%>
<%@page import="travel.product.model.ProductDao"%>
<%@page import="java.util.List"%>
<%@page import="travel.product.model.ProductDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	
	request.setCharacterEncoding("utf-8");
	String p_num=request.getParameter("p_num");

    ProductDao dao = ProductDao.getInstance();
	
    List<Product> list = dao.listProduct();
    Product product=dao.detailProduct(p_num);
    
    System.out.println(product.getP_num());
    
   
   
%>
<!DOCTYPE html>
<html>
  <script type="text/javascript">
  
	function btn_js_update_click(){
  	  /* confirm(문자열, 초기값) */
  	  var check = confirm("수정하시겠습니까?");
  	  /* if(check == true) else false */
  	  if(check) document.location.href="updateFormAction.product?p_num=<%=product.getP_num()%>";
  	}
  
  
	function btn_js_delete_click(){
    	  /* confirm(문자열, 초기값) */
    	  var check = confirm("삭제하시겠습니까?");
    	  /* if(check == true) else false */
    	  if(check) document.location.href="deleteAction.product?p_num=<%=product.getP_num()%>";
    	}
  </script>
<head>
    
</head>
<%@include file="../header.jsp" %>

<body>



<!--<h1> 여기가 컨텐츠 부분입니다.<br><br> 원하는 거 집어 넣으면 돼요</h1>  -->

<div id="contents"  class="city">
    <div class="conts-container">
        <div class="present">
            <div class="tabs-list">
                
                <ul class="tabs-list">
    
        
            <li><a href="product_main.jsp" class="first-tag active"><span>전체 조회</span></a></li>
            
            
            <li><a href="product_register2.jsp" data-id="5d1504d8bebfc81e" class=""><span>물품 등록</span></a></li>
            
            
            <li><a href="" class=""><span>물품 추천</span></a></li>

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

            <div class="conts-box-list search">
           
              <div class="inner-box" data-wishbeen-hotdeal-count="0" id="hotdeal-list" data-keyword="에어텔" data-category="T_22">
          
        <!-- boram -->
    <div class="conts-container conts-box">
        <div class="contents-wrap">
            <div class="bigHeader">물품 세부</div>
            
            <input type="hidden" id="total_amount" value="0">
<link href="http://static2.tmon.kr/static/gen/css/jquery.jqzoom.css?v=0662945f6041df0748663a319955ef132fa97499" rel="stylesheet" type="text/css"/>
                                    <div class="deal_detail_wrap deal_detail_type2">
                <div class="img_area" style="width:350px;height:402px;visibility:;">
                <div class="main_img" id="main_img" style="width:350px;height:402px;visibility:;">
                        <div class="condition" style="z-index:100">
                            </div>
                        <ul class="roll" style="width:350px;height:402px;visibility:;"
                        >
                            <li style="width:350px;height:402px;visibility:;">
                            <!-- 이미지 -->
                                <img src="upload/<%=product.getP_img() %>" id="front_image_area" class="main_img_slide" style="width:350px;height:402px;visibility:;" alt="img" />
                      
                            </li>
                            </ul>
                        </div>
                  
                    <div class="review_result">
                     
                    </div>
                                                        </div>                 <!-- WEB-3705 by dwkang <div class="alimipop" id="alarmpop" style="display:none;"></div> -->              
                 <div class="ct_area" style="width:470px;height:576px;visibility:;">
                    <div class="deal_info"></div>
                     <p class="stit">판매자 이름</p>
                    <h3 class="tit">상품명:<%=product.getp_name()%><br /></h3>
                  
                  
               <div id="promotion_block">
               <div id="price_info" class="price_info">
               <p>가격:<%=product.getP_price()%>
         
                      
                      
                    </div>
                    <div class="dc_coupon">
                        <div class="menu_lst" id="menu_lst">
                                                <a class="btn_viewcp _eventCoupon _act" tl:area="DDIA" tl:ord="1" style="cursor:pointer;display:none;" id="couponA">
                                                       <img src="http://img2.tmon.kr/static/img/img_discount1.gif" width="28" height="21" alt="쿠폰"></img>
                                                       <span id="couponDiscountAmount"></span>
                                                       <span class="btn download">다운로드</span>
                                                       </a>
                                 <!--  <span class="bar">|</span>
                                <em>판매기간:</em>
                          
                            </div>
                    </div>
                    </div> <!-- promotion_block -->
	 <div class="people_time">
                       판매기간:<%=product.getP_term()%>
                          
                      
                    </div>
                  
                    <!-- 내용-->
                        <p class="txt_choice">
                                       내용
                        </p>
                                      
                    <div class="option_info2">
                        <p class="option_txt"></p>
                        <ul class="uio_option_area uio_scroll">
                        <li>
    
                          
                        <%=product.getP_detail()%>
                        </li>
                        </ul>
                      </div>
                      
                                            <div class="order_price1 sell" style="display:none;">
                            <div class="total">
                                <em>총 상품 금액 : </em>
                                <strong><span class="total_amount">0</span><span class="won">원</span></strong>
                            </div>
                        </div>
                  
                    <!-- 상품 옵션 //-->
                    <!--<dummy sg:if="!$self->preparing && count($self->alarm_keyword) > 0 && ($self->soldout || $self->deal_time_left == 0)">-->
                        <!-- WEB-3705 by dwkang
                        <div class="alarm_area">
                            <strong class="blind">재판매 알리미 서비스</strong>
                            <div class="alarm">
                                <span sg:if="$self->soldout" class="soldout">매진되었습니다! 다음에 알려드릴까요</span>
                                <span sg:elseif="$self->deal_time_left == 0" class="deal_end">판매 종료되었습니다! 다음에 알려드릴까요</span>
                                <a onmouseover="$('#alarm_tooltip_main').css('display', 'block')" onmouseout="$('#alarm_tooltip_main').css('display', 'none')" class="ico_help">재판매 알리미 서비스란?</a>
                                <div class="lpop_alarm" id="alarm_tooltip_main" style="display:none">
                                    <div class="inner">
                                    재판매 알리미 서비스를 신청하시면, <strong>다음에 같은 상품의 판매가 진행될 때</strong> 고객님의 이메일로 알려드립니다.
                                    </div>
                                    <span class="arr"></span>
                                </div>
                            </div>
                            <a name="btn_alarm" onclick="alarmRequest('548520330', 'main');" attr-if:class="$self->alarm_request_cnt >= count($self->alarm_keyword);btn_alarm_ok" attr-else:class="btn_alarm" style="cursor:pointer">재판매 알리미 신청</a>
                            <div class="ly_alarm" id="alarm_cancel_main" style="display:none;"><span class="arr"></span>재판매 알리미가 취소되었습니다.</div>
                            <div class="ly_alarm" id="alarm_ok_main" style="display:none;"><span class="arr"></span>재판매 알리미가 신청되었습니다.</div>
                        </div>
                        -->
                    <!--</dummy>
                    <dummy sg:else>-->
                  
                        <div class="btn_area default">
                                                            <div class="btn_direct"><a id="buy_button" href="#buy">거래요청</a></div>                                                                                                  
                          
                            <div  class="click_zzim z_548520330">
                                <input type="hidden" id="zzim_count" value="1414"><a id="deal_zzim" class="btn_zzim " style="cursor:pointer" value="548520330" tl:area="BWCO" tl:ord="2">쪽지보내기</a>
                            </div>
                        </div>
                  
                    </div>
                   
               <!-- <div id="div_deal_zzimlayer" style=""></div>
                <div class="lpop_wrap2" id="standby_alert" style="display:block;top:50%;z-index:1110;margin-top:-155px;display:none">
                    <div class="lpop_cont">
                        <div class="h_area" id="h_area_1" style="display:none">
                            <strong class="txt">대기예약 상품입니다!</strong>
                        </div>
                        <!-- [D] 대기예약가능일 경우 -->
                        <div class="h_area" id="h_area_2" style="display:none">
                            <strong class="txt"><span id="h_area_txt"></span>장부터는 대기예약으로 구매됩니다!</strong>
                        </div>
                        <div class="caution_area">
                            <em class="h_caution"><span class="bu"></span></em>
                            <div class="caution_inner">
                                <ul>
                                <li></li>
                                <li><br><span></span></li>
                                </ul>
                            </div>
                        </div>
                        <p class="caution_dsc"></p>
                        <div class="btn_area">

                     <input type="button" name="btn_js_update" id="btn_js_update" onclick="btn_js_update_click();" value="수정하기" />  		 
                    <input type="button" name="btn_js_delete" id="btn_js_delete" onclick="btn_js_delete_click();" value="삭제하기" />


                        </div>
                    </div>
                    <a style="cursor:pointer" id="lpop_btn_close_new" class="btn_clse">
                    </a>
                </div>
                <!-- 이 상품을 본 고객이 많이 본 다른 상품 -->
                <div class="user_other_deal wrap_deal_lst" id="viewuser" style="display:none;">
                    <div class="blank_line"></div>
                    <h3 class="tit">이 상품을 본 고객이 많이 본 다른 상품</h3>
                    <div id="viewuserview">
                    <ul class="lst column5s" id="viewUserViewUlArea">
                    </ul>
                    </div>
                    <div class="page">
                        <span class="num"><strong><span id="now_page">1</span><span class="bar">/</span></strong><span id="total_page"></span></span>
                        <a href="#" class="btn_prev" tl:ord="0" tl:linktype="prev">이전 상품</a>
                        <a href="#" class="btn_next" tl:ord="0" tl:linktype="next">다음 상품</a>
                    </div>
                </div>
                <!-- 이 상품을 본 고객이 많이 본 다른 상품 -->
                <span class="bg_btm"></span>
                </div>
            
        
            
        </div>
    </div>
      
    <!-- boram end -->
    
    


              </div>
              <div class="clear"></div>
              <div align="center" class="loading-image">
             
                <div class="load-01">
                  <div class="load-02 fa-spin"></div>
                </div>
              </div>
            </div>
        </div>
    </div>
</div> 
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