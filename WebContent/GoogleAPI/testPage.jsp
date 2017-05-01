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
    	// when zoom is 4, present location of france, belgium, germany, swiss.
        var franceLocation = {lat: 48.856667, lng: 2.350833};
        var belgiumLocation = {lat: 50.85, lng: 4.35};
        var germanyLocation = {lat: 52.500556, lng: 13.398889};
        var swissLocation = {lat: 46.95, lng: 7.45};
        
     	// when zoom is 5, present marker of location of below cities.
        var parisLocation = {lat: 48.856667, lng: 2.350833};
        var niceLocation = {lat: 43.703333, lng: 7.266389};
        var brusselsLocation = {lat: 50.85, lng: 4.35};
        var berlinLocation = {lat: 52.518611, lng: 13.408056};
        var munichLocation = {lat: 48.133333, lng: 11.566667};
        var bernLocation = {lat: 46.95, lng: 7.45};
        var zurichLocation = {lat: 47.366667, lng: 8.55};
        
        var marker_zoom4=new Array();

        var marker_zoom5=new Array();

        
        
    
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: parisLocation
        });

        map.addListener('zoom_changed', function() {      
            // 3 seconds after the center of the map has changed, pan back to the
            // marker.
            window.setTimeout(function() {
              map.panTo(marker.getPosition());
           }, 3000);
            	
          });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnrWQ2SHvedNrvdozheYo32pHwCbuvPgs&callback=initMap">
    </script>

  </body>
</html>