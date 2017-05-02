<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
    
<%@include file="../header.jsp" %>

<body>
	<br>
	<div class="form_body">
		<form action="JoinAction.join" class="join_form">
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
			<fieldset>
				<legend>회원정보수정</legend>
				<table class="primary_table">
					<tbody>
					
					<tr>
					<th scope = "row">
					아이디
					</th>
					<td>
					김보람조장
					</td>
					</tr>
					

					<tr>
					<th scope="row">비밀번호</th>
					<td>
					<input type = "password" name = "u_pwd">
					&nbsp;&nbsp;&nbsp;&nbsp;<span>영문 대소문자 / 숫자 4~16자</span>
					
					</tr>
					
					<tr>
					<th scope="row">비밀번호 확인</th>
					<td>
					<input type = "password" name = "pwcheck">
					
					</tr>
					
					<tr>
					<th scope="row">닉네임</th>
					<td>
					<input type = "text" name = "u_name">
					</td>
					</tr>

					
					<tr>
					<th scope = "row">생년월일</th>
					<td>1991년 1월 22일</td>
					</tr>
					
					<tr>
					<th scope="row">성별</th>
					<td>
					여자
					</td>
					
					</tr>
					
					<tr>
					<th scope = "row">주소</th>
					<td>
					 <input type = "text" name = "u_address">		<!-- 주소입려어어억 API를 사용해봅시다-->
						<!-- 	<input type="text" id="sample4_postcode" placeholder="우편번호"> 
							<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br> <input type="text" id="sample4_roadAddress"
							placeholder="도로명주소"> 
							<input type="text" id="sample4_jibunAddress" placeholder="지번주소"> <span id="guide"
							style="color: #999"></span> <script
								src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
								
							<script>
							    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
							    function sample4_execDaumPostcode() {
							        new daum.Postcode({
							            oncomplete: function(data) {
							                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
							
							                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
							                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
							                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
							
							                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
							                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
							                    extraRoadAddr += data.bname;
							                }
							                // 건물명이 있고, 공동주택일 경우 추가한다.
							                if(data.buildingName !== '' && data.apartment === 'Y'){
							                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
							                }
							                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							                if(extraRoadAddr !== ''){
							                    extraRoadAddr = ' (' + extraRoadAddr + ')';
							                }
							                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
							                if(fullRoadAddr !== ''){
							                    fullRoadAddr += extraRoadAddr;
							                }
							
							                // 우편번호와 주소 정보를 해당 필드에 넣는다.
							                document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
							                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
							                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;
							
							                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
							                if(data.autoRoadAddress) {
							                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
							                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
							                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
							
							                } else if(data.autoJibunAddress) {
							                    var expJibunAddr = data.autoJibunAddress;
							                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
							
							                } else {
							                    document.getElementById('guide').innerHTML = '';
							                }
							            }
							        }).open();
							    }
							</script>

 -->
							</td>
					</tr>

					</tbody>

				</table>
			</fieldset>
			
			<fieldset>
			<legend>추가 입력</legend>
			<table>
			
				<tr>
				<th scope="row">직업</th>
				<td>
				<input type = "text" name = "u_job" placeholder="직업을 입력해주세요">
				</td>
				</tr>
				
				<tr>
				<th scope = "row">사용언어</th>
				<td>
				<input type = "text" name = "u_lang">
				<span>&nbsp;&nbsp; 여행 시 사용하는 언어를 알려주세요.</span>
				</td>
				</tr>
				
				<tr>
				<th scope="row">종교</th>
				<td>
				<input type ="text" name = "u_religion">
				</td>
				</tr>
			
				<tr>
				<th scope = "row">운전면허 유무</th>
				<td>
				<input type = "text" name = "u_license">
				<!-- <input type = "radio" name = "u_license" value = "licensed">
				<label>유</label>
				<input type = "radio" name = "u_license" value = "Nolicensed">
				<label>무</label> -->
				</td>
				</tr>
				
				<tr>
				<th scope="row">여행 스타일</th>
				<td>
				<input type = "checkbox" name = "ts_name" value = "healing">
				<label>&nbsp;힐링</label>&nbsp;&nbsp;
				<input type = "checkbox" name = "ts_name" value = "tour">
				<label>&nbsp;관광</label>&nbsp;&nbsp;
				<input type = "checkbox" name = "ts_name" value = "eat">
				<label>&nbsp;맛집</label>&nbsp;&nbsp;
				<input type = "checkbox" name = "ts_name" value = "activity">
				<label>&nbsp;액티비티</label>&nbsp;&nbsp;
				<input type = "checkbox" name = "ts_name" value = "rest">
				<label>&nbsp;휴양</label>
				</td>
				</tr>
				
				<tr>
				<th scope = "row">프로필 이미지</th>
				<td>
				<input type = "file" name = "u_img">
				</td>
				</tr>
				
				
			
			
			</table>
			
			
			</fieldset>

		<div class="nlogin_join_center">
		<button type = "submit" class = "nlogin_btn">수정하기</button>
		</div>
		
		
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