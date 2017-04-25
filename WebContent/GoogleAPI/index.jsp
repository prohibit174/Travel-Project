<!DOCTYPE html>
<html>
  <head>
  <script src='lib/jquery.min.js'></script>
<script src='lib/moment.min.js'></script>
<link rel='stylesheet' href='fullcalendar.css' />
<script src='fullcalendar.js'></script>
<script src="moment.js"></script>
<script>
    moment().format();
</script>
</script>
    <style>
       #map {
        height: 400px;
        width: 50%;
       }
       #calendar {
        height:600px;
        width: 50%;
       }
    </style>
  </head>
  <body>
    <h3>My Google Maps Demo</h3>
    <div id="map"></div>
    
    <div id='calendar'></div>

    <script>
/*----------------------------------------------------------------- */
/*-------------------------- initMap 시작  -------------------------- */
/*----------------------------------------------------------------- */

      function initMap() {
        var uluru = {lat: -25.363, lng: 131.044};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: uluru
        
        });

        $('#calendar').fullCalendar('next');//캘린더 다음달로 넘김
		  map.addListener('click', function() {
		    // 3 seconds after the center of the map has changed, pan back to the
		    // marker.
		  });

        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
        map.addListener('click', function(e) {
            placeMarkerAndPanTo(e.latLng, map);
            
          });        
        
      }
/*----------------------------------------------------------------- */
/*-------------------------- initMap 종료  -------------------------- */
/*----------------------------------------------------------------- */
      function placeMarkerAndPanTo(latLng, map) {
    	  var marker = new google.maps.Marker({
    	    position: latLng,
    	    map: map
    	  });
    	  map.panTo(latLng);
    	  //alert('Marker is inserted : '+marker.getPosition());
    	  
    	}
/*----------------------------------------------------------------- */
/*-------------------------- initMap 종료  -------------------------- */
/*----------------------------------------------------------------- */
  	var now = new Date(); //현재 날짜 가져오기
  	var year = now.getFullYear(); //현재 년도 가져오기
    var month = now.getMonth()+1; // 현재 월 가져오기
    var day = now.getDate(); //현재 일 가져오기

    var startDate=new Date();
    var endDate=new Date();
    endDate.setDate(endDate.getDate()+1);
    

  	$(document).ready(function() {
	    // page is now ready, initialize the calendar...
	    $('#calendar').fullCalendar({
	        // put your options and callbacks here
            defaultDate : now
                , editable : true
                , eventLimit : true
                , events: [
                	  {
                          title : "kim"
                        , start : now
                        , end : now
                    },
                  /*   {
                        title : "lee"
                      , start : "2017-4-26"
                      , end : "2017-4-27"
                  } */ 
                ],
                insertMarker: function() {
                	events: [
                       {
                          title : "lee"
                        , start : "2017-4-26"
                        , end : "2017-4-27"
                    }  
                  ]
                   /*  $("#mySchedule .modal-title").html('일정을 입력하세요!');
                    $('#mySchedule').modal('show');
                    
                    dt_start = moment(start).format('YYYY-MM-DD hh:mm');
                    dt_end = moment(end).format('YYYY-MM-DD hh:mm');              //달력일자 선택시 작성화면 노출 */
                   } 
	    });
	});	
  	
    $('#map').click(function(){
      	alert('hi start');
    	$('#calendar').fullCalendar('insertMarker');
      	alert('hi end');	
    	    });


    

    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnrWQ2SHvedNrvdozheYo32pHwCbuvPgs&callback=initMap">
    </script>

  </body>
</html>