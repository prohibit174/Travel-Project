<!DOCTYPE html>
<html>
  <head>
  <script src='lib/jquery.min.js'></script>
  <script src='ReverseGeocoding'></script>
<script src='lib/moment.min.js'></script>
<link rel='stylesheet' href='fullcalendar.css' />
<script src='fullcalendar.js'></script>
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
    <div id="map"></div>
    <div id='calendar'></div>
    <script>
	   var markerPosition;	
		
	   
      function initMap() {
        var uluru = {lat: 48.8564422792504, lng: 2.3521900177001953};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: uluru
        });
        $('#calendar').fullCalendar('next');//캘린더 다음달로 넘김 ex)이번달이 4월이면 5월로 이동

        var marker = new google.maps.Marker({//마커를 uluru에 찍음
          position: uluru,
          map: map
        });
        

        map.addListener('zoom_changed', function() {
            // 3 seconds after the center of the map has changed, pan back to the
            // marker.
          //  window.setTimeout(function() {
         //     map.panTo(marker.getPosition());
         //  }, 3000);
          });
       
        map.addListener('click', function(e) {//맵 클릭 시 이벤트  
            placeMarkerAndPanTo(e.latLng, map);//마커를 맵에 삽입한다.
            var geocoder = new google.maps.Geocoder;
            
            var addr=String(geocodeLatLng(markerPosition, geocoder, map));
            //alert('coming : '+addr);
        	$('#calendar').fullCalendar( 'addEventSource', {
        	    events: [
        	        {
        	            title: 'Event1',
        	            start: '2017-04-01'
        	        },
        	        {
        	            title: 'Event2',
        	            start: '2017-04-02'
        	        }
        	    ],
        	    color: 'yellow',   // an option!
        	    textColor: 'black' // an option!
        	} )
          });        
      }
      
      function placeMarkerAndPanTo(latLng, map) {//마커를 마우스 클릭 시 찍음
    	  var marker = new google.maps.Marker({
    	    position: latLng,
    	    map: map
    	  });
    	  map.panTo(latLng);
    	  alert('Marker is inserted : '+marker.getPosition());
		  markerPosition=marker.getPosition();
    	}
      
   	  function geocodeLatLng(markerPosition, geocoder, map) {
   		  //alert(input);
        //var input = document.getElementById('latlng').value;
        var convert = String(markerPosition);
        var addr;
        
        function left(){   //왼쪽 좌표
            var leftsart = convert.indexOf('(')+1;
            var leftend = convert.indexOf(',');
            var leftint = convert.substring(leftsart, leftend);
            return leftint;
         }
         
         function right(){   //오른쪽 좌표
            var leftsart = convert.indexOf(' ')+1;
            var leftend = convert.indexOf(')');
            var rightint = convert.substring(leftsart, leftend);
            return rightint;
         }
        
        var latlng = {lat: parseFloat(left()), lng: parseFloat(right())};
        
        geocoder.geocode({'location': latlng}, function(results, status) {
          if (status === 'OK') {
            if (results[1]) {
              map.setZoom(11);
              var marker = new google.maps.Marker({
                position: latlng,
                map: map
              });
              alert(results[0].address_components[5].long_name);
              alert(results[1].formatted_address);
              //infowindow.setContent(results[1].formatted_address);
              //infowindow.open(map, marker);
              //rdeturn String(results[0].address_components[5].long_name);
            } else {
              window.alert('No results found');
              return null;
            }
          } else {
            window.alert('Geocoder failed due to: ' + status);
            return null;
          }
          
        });
      }

/*-------------------------------------------------------------------------------------------------- */
/*-------------------------------------------- Map 관련 코드   ----------------------------------------- */
/*-------------------------------------------------------------------------------------------------- */
  	var currentDate = new Date(); //현재 날짜
 
    var startDate=new Date();
    var endDate=new Date();
    endDate.setDate(endDate.getDate()+1); 
    
    function addItineraryOnCalendar(latLng, map) {//마커를 마우스 
  	  var marker = new google.maps.Marker({
  	    position: latLng,
  	    map: map
  	  });
  	  map.panTo(latLng);
  	  //alert('Marker is inserted : '+marker.getPosition());
  	}
    
  	$(document).ready(function() {
	    // page is now ready, initialize the calendar...
	    $('#calendar').fullCalendar({
	        // put your options and callbacks here
            defaultDate : currentDate
                , editable : true
                , eventLimit : true
                , events: [
                	  {
                          title : "kim"
                        , start : currentDate
                        , end : currentDate
                    },
                  /*   {
                        title : "lee"
                      , start : "2017-4-26"
                      , end : "2017-4-27"
                  } */ 
                ], 
	    });
	});	
  	/*-------------------------------------------------------------------------------------------------- */
  	/*-------------------------------------- Caldendar 관련 코드   ----------------------------------------- */
  	/*-------------------------------------------------------------------------------------------------- */
  	
     $('#map').click(function(){ // 맵 클릭 시 Calendar에 event 추가


  	}); 


    

    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnrWQ2SHvedNrvdozheYo32pHwCbuvPgs&callback=initMap">
    </script>

  </body>
</html>