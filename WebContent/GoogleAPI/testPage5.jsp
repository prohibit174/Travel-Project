<!DOCTYPE html>
<html>
  <head>
  
<link rel='stylesheet' href='fullcalendar.css' />

  <script src='lib/jquery.min.js'></script>
<script src='lib/moment.min.js'></script>
<!-- <script src='jquery-ui.js'></script>
<script src='jquery-ui.min.js'></script> -->
<script src='fullcalendar.js'></script>

    <style>
       #map {
        height: 400px;
        width: 45%;
       }
       #calendar {
        height:600px;
        width: 45%;
       }
    </style>
  </head>
  
  <body>
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
      
      var calEventColor=[];
      calEventColor=["#CEFFC7","#FFFF5A","#D7FF6C","#FFD6FD","#B5B2FF", "#B6FFFF", "FFEDA2", "notReachable"];
      var indexOfCalEventColor=0;
      function nextEventColor(){
    	  if(indexOfCalEventColor==calEventColor.length-1)
    		  indexOfCalEventColor=0;
    	  return calEventColor[indexOfCalEventColor++]; 
      }
      
 
       /* ------------------------initMap() 종료 --------------------------------------------------------*/
      /* ------------------------Calendar 관련 스트립트 시작 ------------------------------------------------*/
      
      
        $(document).ready(function(){
       // page is now ready, initialize the calendar...
       $('#calendar').fullCalendar({
           // put your options and callbacks here
            	defaultDate : todayDate,
           	 events: [
                 {
                     title: 'title',
                     start: '2017-04-27'
                 },
                  {
                     title: 'title3',
                     start: '2017-04-29'
                 }
             ]
            	, editable : true
                , resizable: true
                , eventLimit : true
                , dayClick: function(date, jsEvent, view) {
                   if(susDay == null){
                    susDay = String(date.format())
                    $(this).css('background-color', 'green').text('start');
                    
                   }
                    else if(susEnd == null){
                   susEnd = String(date.format())
                   $(this).css('background-color', 'red').text('end');
                    
                    };
                /*    alert('Clicked on: ' + date.format());
                    alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);
                    alert('Current view: ' + view.name); */

                    // change the day's background color just for fun
                    /*  $(this).css('background-color', 'green'); */
                },
       });
       var cal=[];
       //cal=$('#calendar').fullCalendar( 'getEventSources');
       cal=$('#calendar').fullCalendar( 'clientEvents');
       for(var i=0;i<cal.length;i++)
    	   {
    	   		alert(cal[i].title+' '+cal[i].start);
    	   }
   });
    
     
      
    
    </script>


  </body>
</html>