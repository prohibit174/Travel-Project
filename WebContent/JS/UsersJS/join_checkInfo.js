//암호확인
$(function(){ 
	var regexp = "\w";
	$('#u_pwd').keyup(function(){ 
		$('#check').text(''); 

		if($('#u_pwd').val().length<4 || $('#u_pwd').val().length>13){ 
			$('#check').text(''); 
			$('#check').html('적합하지 않은 길이입니다'); 
		} 

		if( !$('#u_pwd').val().match(regexp) ){ 
			$('#check').text(''); 
			$('#check').html('조건에 맞지않습니다'); 
		} 
	}); 

	$('#pwcheck').keyup(function(){ 
		if($('#u_pwd').val()!=$('#pwcheck').val()){ 
			$('#check').text(''); 
			$('#check').html('암호를 다시 확인하세요'); 
		} else{ 
			$('#check').text(''); 
			$('#check').html(''); 
		} 
	});

})