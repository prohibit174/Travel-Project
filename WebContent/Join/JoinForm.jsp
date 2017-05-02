<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
    
   
</head>
<%@include file="../header.jsp" %>
<body>






	<div class="lnb">
		<h2>회원가입</h2>
		<ul class="city_name">
			<li class="city"><img
				src="//img.tourtips.com/images/common/lnb/join.png"
				alt="회원가입 - 회원정보입력" /></li>
		</ul>
	</div>

	<br>
	<br>
	<div class="form_body">
			 <form action="JoinAction.users" class="join_form" method="post" enctype="multipart/form-data">
			<fieldset>
				<legend>필수 입력 사항</legend>
				<table class="primary_table">
					<tbody>
					
					<tr>
					<th scope = "row">
					아이디
					</th>
					<td>
					<input type = "text" name = "u_id" id = "u_id">
					&nbsp;&nbsp;&nbsp;&nbsp;<span>영문소문자 / 숫자, 4~16자</span>
			 		<input type = "button" id = "u_idcheck" value = "중복검사"> 
					
					</td>
					</tr>
					
					<tr>
					<th></th>
					<td>
					<font id="idcheck" size="2" color="green"></font> 
					</td>
					</tr>
					
					<tr>
					<th scope="row">비밀번호</th>
					<td>
					<input type = "password" name = "u_pwd" id = "u_pwd">
					&nbsp;&nbsp;&nbsp;&nbsp;<span>알파벳과 숫자 조합으로 6~12자</span>
					
					
					
					</tr>
					
					<tr>
					<th scope="row">비밀번호 확인</th>
					<td>
					<input type = "password" name = "pwcheck" id = "pwcheck">
					&nbsp;&nbsp;
					<font id="check" size="2" color="red"></font> 

					</tr>
					
					<tr>
					<th scope="row">닉네임</th>
					<td>
					<input type = "text" name = "u_name">
					</td>
					</tr>
					
					<tr>
					<th scope = "row">생년월일</th>
					<td>
					<input type = "text" name = "u_birth" >
					</td>
					</tr>
					
					<tr>
					<th scope="row">성별</th>
					<td>
					<input type = "radio" name = "u_sex" value = "male" checked="checked">
					<label>남자</label>
					<input type = "radio" name = "u_sex" value= "female">
					<label>여자</label>
					</td>
					</tr>
					
					
			<tr>
				<th scope = "row">운전면허 유무</th>
				<td>
				<input type = "radio" name = "u_license" value = "licensed" checked  = "checked">
				<label>유</label>
				<input type = "radio" name = "u_license" value = "Nolicensed">
				<label>무</label>
				</td>
				</tr>
					
					<tr>
					<th scope = "row">거주 지역</th>
					<td>
					 <input type = "text" name = "u_address">	
					</td>
					</tr>

					</tbody>

				</table>
			</fieldset>
			
			<fieldset>
			<legend>선택 입력사항</legend>
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
				<th scope="row">여행 스타일</th>
				<td>
				<input type = "checkbox" name = "u_style" value = "healing" checked = "checked">
				<label>&nbsp;힐링</label>&nbsp;&nbsp;
				<input type = "checkbox" name = "u_style" value = "tour">
				<label>&nbsp;관광</label>&nbsp;&nbsp;
				<input type = "checkbox" name = "u_style" value = "eat">
				<label>&nbsp;맛집</label>&nbsp;&nbsp;
				<input type = "checkbox" name = "u_style" value = "activity">
				<label>&nbsp;액티비티</label>&nbsp;&nbsp;
				<input type = "checkbox" name = "u_style" value = "rest">
				<label>&nbsp;휴양</label>
				<span>하나만 선택해주세요</span>
				</td>
				</tr>
					
					<tr>
					<th scope="row">프로필 이미지</th>
					<td>
					<input type = "file" name = "u_img" id = "u_img">
					</td>
					</tr>
			</tbody>
			</table>
			</fieldset>
	<!-- 이용약관 -->

			
			<div class="nlogin_join_center">
		<!-- <button type = "submit" class = "nlogin_btn">가입하기</button> -->
		<input type = "submit" class = "nlogin_btn" value = "가입하기">
		<span>이게 나의 최선이다..... 누가 가운데 정렬좀 해주세요.........</span>
		</div>
		</form>
			 

	</div>

<%@include file="../footer.jsp" %>


</body>
</html>