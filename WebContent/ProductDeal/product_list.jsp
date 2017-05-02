<%@page import="travel.product.model.Product"%>
<%@page import="java.util.List"%>
<%@page import="travel.product.model.ProductDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	
	request.setCharacterEncoding("utf-8");
    ProductDao dao = ProductDao.getInstance();
	
   List<Product> list = dao.listProduct();
   request.setAttribute("list", list);
   System.out.println(session.getAttribute("member_id"));
   String u_id  = session.getAttribute("member_id").toString();
   
%>
<!DOCTYPE html>
<html>
<head>

<%@include file="../header.jsp" %>
</head>
 <body> 




<!--<h1> 여기가 컨텐츠 부분입니다.<br><br> 원하는 거 집어 넣으면 돼요</h1>  -->

<div id="contents"  class="city">
    <div class="conts-container">
        <div class="present">
            <div class="tabs-list">
                
                <ul class="tabs-list">
    
        
            <li><a href="mainAction.product" class="first-tag active"><span>전체 조회</span></a></li>
            
            
            <li><a href="insertForm.product"><span>물품 등록</span></a></li>
            
            
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
            <div class="bigHeader">
		전체 물품
            </div>
            <div class="content-tabs">
	물품 검색 : <input type="text" />
            </div>
            <div class="conts-box-list">
                <div class="inner-box">


         
         <c:forEach var="product" items="${list}">
<div data-id="6a341fddf4c819fc" class="content-box type01">
	<a href = "detailAction.product?p_num=${product.p_num }" >
    <div class="type01">
      <div class="cover-img">
      <!-- modi -->
	<c:if test="${product.p_img!=null}">
                  <c:set var="head"
                     value="${fn:substring(product.p_img, 0, fn:length(product.p_img)-4) }"></c:set>
                  <c:set var="pattern"
                     value="${fn:substring(product.p_img, fn:length(head)+1, fn:length(product.p_img)) }"></c:set>

                  <c:choose>
                     <c:when test="${pattern=='jpg' || pattern =='gif' || pattern =='png' }">
                        <img src="upload/${head }_small.${pattern}" alt="img /">
                     </c:when>
                     <c:otherwise>
                        <c:out value="No IMAGE"></c:out>
                     </c:otherwise>
                  </c:choose>
               </c:if>

      </div>
      
      <div class="tit"> <c:out value="${product.p_num }"></c:out></div>
      <div class="desc">
        <span><c:out value="${product.p_price }"></c:out></span>
        <span><c:out value="${product.p_term }"></c:out></span>
      </div>
    </div>
  </a>
</div>

 </c:forEach>
                    <div class="clear"></div>
                </div>
                <div class="btn-box center">
                    <a class="btn-more" href="/city?serviceType=global&amp;tab=specialTip"><span>전체 물품</span> 더보기 </a>
                </div>
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
<%@include file="../footer.jsp" %>
</body>
</html>