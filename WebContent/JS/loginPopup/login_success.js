$(document).ready(function() {
	window.onload = function() {
		if ($('#frames span').text() != '') {
			var html = '';
			html += '<span> 님 환영 합니다. </span>';
			$('#frames').append(html);

			$('.btn-new-plan').empty();
			$('.btn-new-plan').append("로그아웃");

		}
	}

});