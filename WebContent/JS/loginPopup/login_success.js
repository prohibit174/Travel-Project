$('#login_button').click(function() {
    $.ajax({
       url : 'LoginAction.java',
       type : 'post',
       data :{
      	 id : $("#u_id").val(),   
      	 pass : $("#u_pwd").val()
       },
       dataType : 'json',
       success : sendHandler
    });
    return false;
 });
 function sendHandler(data) {
       $('.frames').empty();
       $.each(data, function(index, entry) {
      	 if(index == data.length-1){
      		   var html = '<div class="entry">';
		            html += '<div>';
		            html += '<p class="id">' + entry.id + '님 환영합니다  </p>' ;
		            html += '</div>';
		            html += '</div>';
		          
		            $('.frames').append(html);

      	 }
       
       });
    }