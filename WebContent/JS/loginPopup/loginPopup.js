$(document).ready(function(){
	$('.btn-new-plan').click(function(){
		if($('.btn-new-plan').text() === "로그인"){
		var popUrl = "login.main";
		var popOption = "width= 300, height=200, resizable=no, scrollbars=no, status=no, top=300, left= 600;";
		window.open(popUrl, "" , popOption);
		}else if($('.btn-new-plan').text() === "로그아웃"){
			location.href = "logoutAction.main";
		}
	});
	

});
	
