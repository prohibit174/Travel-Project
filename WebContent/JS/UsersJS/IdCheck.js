/*function IdCheck(){
	var keyword = document.form_body.join_form.u_id.value;
	
	var params = "keyword=" + encodeURIComponent(keyword);
	
	sendRequest("")
}
*/

$("#u_id").keyup(function() {
			$.ajax({
				url : "IdCheckAction.users",
				type : "post",
				data : $(this).serialize(),
				success : function(data) {
					if (data.length > 0) {
					document.getElementByName("u_id").value = "이미 해당 아이디로 가입된 회원가 있습니다.";
					} else {
						if ($("#u_id").val().length < 5) {
						document.getElementByName("u_id").value = "아이디를 5자 이상 입력해주세요.";
						} else {
							document.getElementByName("u_id").value = "사용 가능한 아이디입니다.";
						}
					}
				},
				error : function(error) {
					alert(error.statusText);
				}
			});

			return false;
		});