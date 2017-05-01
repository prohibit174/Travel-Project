
$(function(){
	$('.nlogin_btn').click(function(){
		alert('서브밋')
		if($('#law_agree').is(":checked")==false){
			alert('이용 약관에 동의가 필요합니다.');
		}else if($('#priv_agree').is(':checked')==false){
			alert('개인정보수집에 동의가 필요합니다.');
		}else if($(document.getElementsByName("u_sex").checked=false)){
			alert('성별을 선택해주세요.');
		}else if($(document.getElementsByName("u_license").checked=false)){
			alert('운전면허 소지여부를 선택해주세요.');
		}else if($('#u_id').val()==""){
			alert('아이디는 필수 사항 입니다.');
		}else if($('#pwcheck').val()==""){
			alert('비밀번호 확인을 해주세요.');
		}else{
			$.ajax({
				url : "JoinAction.users",
				data : $(".join_form"),
				success : sendHandler
					
			});
			return false
		}
		function sendHandler(data){
			alert('회원가입을 환영합니다');
		}
		
	})

})