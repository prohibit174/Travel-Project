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

<%@include file="../footer.jsp" %>
</body>
</html>