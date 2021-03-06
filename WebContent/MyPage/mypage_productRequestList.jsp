<%@page import="travel.mypage.action.ProductRequestListAction"%>
<%@page import="travel.product.model.Product"%>
<%@page import="travel.product.model.Product_Request"%>
<%@page import="java.util.List"%>
<%@page import="travel.product.model.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String u_id = session.getAttribute("member_id").toString();
	String p_num=request.getParameter("p_num");
	System.out.println(p_num);
	ProductDao dao = ProductDao.getInstance();
	Product_Request productReq=dao.detailProductReq(p_num);
	request.setAttribute("productReq", productReq);
	
	List<Product_Request> list = dao.listProductRequest(u_id);
	request.setAttribute("list", list);
	
	


%>


<!DOCTYPE html>
<html>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage_css/city-main-styles_mypage.css">
<head>
<script type="text/javascript">

function btn_js_accept_click(URL){
	  /* confirm(문자열, 초기값) */
	  //var check = confirm("수락하시겠습니까?");
	  /* if(check == true) else false */
	  //if(check) document.location.href="updateAcceptAction.product?p_num=${productReq.p_num}";
	  if(confirm("수락하시겠습니까?") == true){
		  location.href=URL;
	  }
	 
	}
</script>
    
<%@include file="../header.jsp" %>




<body>
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
            <li><a href="productRequestList.mypage" data-id="f9188662257e085d" class=""><span>내 상품조회</span></a></li>
            
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
				<legend>물품 교환 요청 목록</legend>
				
            <table class="primary_table">
            <tr>
            <th>거래번호</th>
            <th>아이디</th>
            <th>상품번호</th>
            <th>수락여부</th>
            <th>장소</th>
            <th>시간</th> 
            <th>수락</th> 
            <th>거절</th> 
            </tr>
            
            

            
	<c:forEach var="product_req" items="${list}">
	
      <tr height="30">
        <td align="center">${product_req.pr_reqnum }</td>
         <td align="center">${product_req.u_id }</td>
         <td align="center">${product_req.p_num }</td>
         <td align="center">${product_req.pr_ox }</td>
         <td align="center">${product_req.pr_place }</td>
         <td align="center">${product_req.pr_date }</td>
         
         <td align="center"><input type="button" value="수락" class="nlogin_btn" onclick="javascript:btn_js_accept_click('updateAcceptAction.product?p_num=${product_req.p_num }')"></td>
         <td align="center"><input type="button" value="거절" onclick="location.href='carpoolDelete.mypage?c_num=${carpool.c_num } '" class="nlogin_btn"></td>
        
         </tr>
         </c:forEach>
       
       
   
         </table>
         <br><br><br>
        </fieldset>
       

		</form>


	</div>
	


	
	
<%@include file="../footer.jsp" %>
</body>
</html>
