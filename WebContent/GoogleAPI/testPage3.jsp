<!DOCTYPE html>
<html>
  <head>
  <script src='lib/jquery.min.js'></script>
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
    /* Map 관련 변수 */
      var markerPosition;   
       var marker_zoom4=[];
       var marker_zoom5=[];
       latLngList = [];
       susDay = null;
       susEnd = null;
       
     /* Calendar 관련 변수 */  
         var todayDate = new Date(); //현재 날짜
      var currentDate=new Date();      
      
  	function LongDateToShortDate(longDate){
			var todayYear= longDate.getFullYear();
	   		var todayMonth= longDate.getMonth();
	   		var todayday= todayDate.setDate(todayDate.getDate()+1);
	   		longDate=String(todayYear+'-'+todayMonth+'-'+todayday);
	   		shortDate=longDate;
	   		alert(shortDate);
	   		return shortDate;
		}
		
		 function ShortDateToLongDate(shortDate){
			tempDate=new Date();
			var temp=String(shortDate);
			var strArr=temp.split('-');
			tempDate.setFullYear(strArr[0]);
			tempDate.setMonth(strArr[1]);
			tempDate.setDate(strArr[2]);
			var LongDate=tempDate
			alert(longDate);
			return longDate;
		}    
         
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
        
      
       
         marker_zoom4[0] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
            position: franceLocation,
            map: map,
            title:'france'
          });
       marker_zoom4[1] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
            position: belgiumLocation,
            map: map,
            title:'belguim'
          });
       marker_zoom4[2] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
            position: germanyLocation,
            map: map,
            title:'germany'
          });
       marker_zoom4[3] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
            position: swissLocation,
            map: map,
            title:'swiss'
         });
       
        marker_zoom5[0] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
            position: parisLocation,
            map: map,
            title:'paris'
          });
       marker_zoom5[1] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
            position: niceLocation,
            map: map,
            title:'nice'
          });
       marker_zoom5[2] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
            position: brusselsLocation,
            map: map,
            title:'brussels'
          });
       marker_zoom5[3] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
            position: berlinLocation,
            map: map,
            title:'berlin'
          });
       marker_zoom5[4] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
            position: munichLocation,
            map: map,
            title:'munich'
          });
       marker_zoom5[5] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
            position: bernLocation,
            map: map,
            title:'bern'
          });
       marker_zoom5[6] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
            position: zurichLocation,
            map: map,
            title:'zurich'
          });
      
 
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: parisLocation
        });

        map.addListener('zoom_changed', function() {
            if(map.getZoom()<5){

               if(marker_zoom5[0]!=null){
                  for(i=0; i<7; i++){
                      marker_zoom5[i].setMap(null);
                   } 
               }
               for(i=0; i<4; i++){
               marker_zoom4[i].setMap(map);
               }
             }
            else if(map.getZoom()>=5){
               
            for(i=0; i<4; i++){
                  marker_zoom4[i].setMap(null);
               }   
              for(i=0; i<7; i++){
                  marker_zoom5[i].setMap(map);
               }
            }
          });
        
        /* marker_zoom4 클릭 이벤트*/
        for(i=0;i<marker_zoom4.length;i++)
       {
          marker_zoom4[i].addListener('click', function() {
             if(susDay == null || susEnd == null){
                  if(susDay == null ){
                alert("select start date")
                }
                  else{
                alert("select end date")
                }
             }else{
        	susEnd=LongDateToShortDate(ShortDateToLongDate(susEnd));
           latLngList.push(this.getPosition());
            createLine(latLngList, map);
             
             var title=this.getTitle();
             var date=currentDate;
              $('#calendar').fullCalendar( 'addEventSource', {
                   events: [
                       {
                           title: title,
                           start: susDay,
                           end : susEnd
                       }
                   ],
                   color: 'yellow',   // an option!
                   textColor: 'black' // an option!
               } )
                 susDay = null;
               susEnd = null;
               }      //else end
               });   //click event end
       }
        /* marker_zoom5 클릭 이벤트*/
 /*       for(i=0;i<marker_zoom5.length;i++)
       {
          marker_zoom5[i].addListener('click', function() {
             alert('marker 5 click event');
             addItineraryOnCalendar(marker_zoom5[i]);
    
          });   
       } */
      }  // initmap end
      
      
      //선긋기 
      function createLine(latLngList, map){ 
         var movingPath = new google.maps.Polyline({
          path: latLngList,
          geodesic: true,
          strokeColor: '#000000',
          strokeOpacity: 10.0,
          strokeWeight: 1
        });
         if(latLngList.length>1){
         movingPath.setMap(map);
         }
      }
    //선긋기
   		 

    
    
      /* ------------------------Calendar 관련 스트립트 시작 ------------------------------------------------*/
      
      
        $(document).ready(function(){
       // page is now ready, initialize the calendar...
       $('#calendar').fullCalendar({
           // put your options and callbacks here
            defaultDate : todayDate
                , editable : true
                , eventLimit : true
                , dayClick: function(date, jsEvent, view) {
                   if(susDay == null){
                    susDay = String(date.format())
                    $(this).css('background-color', 'green');
                   }
                    else{
                   susEnd = String(date.format())
                   $(this).css('background-color', 'red');
                   alert(year);
                    };
                /*    alert('Clicked on: ' + date.format());
                    alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);
                    alert('Current view: ' + view.name); */

                    // change the day's background color just for fun
                    /*  $(this).css('background-color', 'green'); */
                },
       });
   });
    
     
      
    
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnrWQ2SHvedNrvdozheYo32pHwCbuvPgs&callback=initMap">
    </script>

  </body>
</html>