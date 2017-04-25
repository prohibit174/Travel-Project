<!DOCTYPE html>
<html>
  <head>
  <script src='lib/jquery.min.js'></script>
<script src='lib/moment.min.js'></script>
<link rel='stylesheet' href='fullcalendar.css' />
<script src='fullcalendar.js'>
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
      function initMap() {//맵 초기화
        var uluru = {lat: -25.363, lng: 131.044};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: uluru
        });
        
        //마커를 ulrur에 표시함


        $('#calendar').fullCalendar('next');//캘린더 다음달로 넘김 ex) 오늘이 4월이면 5월로 넘김
        
		  map.addListener('click', function() {// map 클릭 이벤트 설정
		    placeMarkerAndPanTo(e.latLng, map); // map 클릭 시  마커를 map에 표시(placeMarkerAndPanTo 함수 이용)
		    alert('hihihihi'); 
		  });
	        var marker = new google.maps.Marker({
	            position: uluru,
	            map: map
	          });
      }
      function placeMarkerAndPanTo(latLng, map) {
    	  var marker = new google.maps.Marker({
    	    position: latLng,
    	    map: map
    	  });
    	  map.panTo(latLng);
    	}
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnrWQ2SHvedNrvdozheYo32pHwCbuvPgs&callback=initMap">
    </script>
	<script type="text/javascript">
	
	
	//달력 플러그인 함ㅅ
	$(document).ready(function() {

	    // page is now ready, initialize the calendar...

	    $('#calendar').fullCalendar({
	        // put your options and callbacks here
            defaultDate : "2017-05-12"
                , editable : true
                , eventLimit : true
                , events: [
                	  {
                          title : "All Day Event"
                        , start : "2017-05-01"
                    },
                    {
                          title : "Long Event"
                        , start : "2017-05-07"
                        , end : "2017-05-10"
                    },
                    {
                          id : 999
                        , title : "Repeating Event"
                        , start : "2016-05-09T16:00:00"
                    },
                    {
                          id : 999
                        , title : "Repeating Event"
                        , start : "2016-05-16T16:00:00"
                    },
                    {
                          title : "Conference"
                        , start : "2016-05-11"
                        , end : "2016-05-13"
                    }
                ]
	    })
	});

	</script>
  </body>
</html>