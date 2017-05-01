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
       var marker_zoom4=[];
       var marker_zoom5=[];
		
       
      
	   
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
        
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: parisLocation
        });

        map.addListener('zoom_changed', function() {
            if(map.getZoom()==4){

            	if(marker_zoom5[0]!=null){
            		for(i=0; i<7; i++){
                		marker_zoom5[i].setMap(null);
                	} 
            	}
            	addMarker_zoom4();
                  }
            else if(map.getZoom()==5) {
				
            	if(marker_zoom4[0]!=null){
				for(i=0; i<4; i++){
            		marker_zoom4[i].setMap(null);
            	} 
            	}
            	addMarker_zoom5();
            }
            else{
            	
				for(i=0; i<4; i++){
            		marker_zoom4[i].setMap(null);
            	}
        		for(i=0; i<7; i++){
            		marker_zoom5[i].setMap(null);
            	} 
            	//addMarker_zoom4();
            	//addMarker_zoom5();
            }
          });
        function addMarker_zoom4(){
          	marker_zoom4[0] = new google.maps.Marker({//ë§ì»¤ë¥¼ uluruì ì°ì
                  position: franceLocation,
                  map: map
                });
          	marker_zoom4[1] = new google.maps.Marker({//ë§ì»¤ë¥¼ uluruì ì°ì
                  position: belgiumLocation,
                  map: map
                });
          	marker_zoom4[2] = new google.maps.Marker({//ë§ì»¤ë¥¼ uluruì ì°ì
                  position: germanyLocation,
                  map: map
                });
          	marker_zoom4[3] = new google.maps.Marker({//ë§ì»¤ë¥¼ uluruì ì°ì
                  position: swissLocation,
                  map: map
        	    });
        }
              function addMarker_zoom5(){
              	marker_zoom5[0] = new google.maps.Marker({//ë§ì»¤ë¥¼ uluruì ì°ì
                      position: parisLocation,
                      map: map
                    });
              	
              	marker_zoom5[1] = new google.maps.Marker({//ë§ì»¤ë¥¼ uluruì ì°ì
                      position: niceLocation,
                      map: map
                    });
              	marker_zoom5[2] = new google.maps.Marker({//ë§ì»¤ë¥¼ uluruì ì°ì
                      position: brusselsLocation,
                      map: map
                    });
              	marker_zoom5[3] = new google.maps.Marker({//ë§ì»¤ë¥¼ uluruì ì°ì
                      position: berlinLocation,
                      map: map
                    });
              	marker_zoom5[4] = new google.maps.Marker({//ë§ì»¤ë¥¼ uluruì ì°ì
                      position: munichLocation,
                      map: map
                    });
              	marker_zoom5[5] = new google.maps.Marker({//ë§ì»¤ë¥¼ uluruì ì°ì
                      position: bernLocation,
                      map: map
                    });
              	marker_zoom5[6] = new google.maps.Marker({//ë§ì»¤ë¥¼ uluruì ì°ì
                      position: zurichLocation,
                      map: map
                    });
              }
      
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnrWQ2SHvedNrvdozheYo32pHwCbuvPgs&callback=initMap">
    </script>

  </body>
</html>