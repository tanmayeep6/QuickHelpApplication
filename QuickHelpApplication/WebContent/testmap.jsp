<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        #map{
            height:400px;
            width:100%;
        }
    </style>
</head>
<body>
<h1>Welcome</h1>
<button onclick="getLocation()">getIt</button>

<p id="demo"></p>


    <div id="map"></div>
<script>
var x = document.getElementById("demo");

var latco;
var lonco;
var latlon;
var position1;
function getLocation() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(showPosition);
  } else { 
    x.innerHTML = "Geolocation is not supported by this browser.";
  }
}

function showPosition(position) {
  x.innerHTML =
   
  "<form action=" +"coordinates" +" method=" +"post" +">" +
  " Latitud <input name=" +"latitude " +" value = " + 19.0451  +">"+"</br>  " +
  " Longitude <input name=" +"longitude" +" value = " + 73.0640 +">"+"</br> " +
  " <input type=" +"submit" +" value=" + "Submit Coordinates"+">"+
  " </form>";
	 latco = 19.0451;
	 lonco = 73.0640;
	 latlon = new google.maps.LatLng(latco, lonco)
  /*  "Latitude: " + position.coords.latitude + 
  "<br>Longitude: " + position.coords.longitude;/
 */ 
 	initMap();
}

function initMap(){
	var talco = latco.value;
	var nolco = lonco.value;
    var options = {
        zoom:12,
        center: latlon
    }
    var map = new google.maps.Map(document.getElementById('map'), options);

    var marker = new google.maps.Marker({
        position:latlon,
        map:map,
        icon:'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png'
    });
    google.maps.event.addListener(marker, 'click', function() {
        infowindow.setContent(place.name);
        infowindow.open(map, this);
      });

    var infoWindow = new google.maps.InfoWindow();

}
</script>


<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB48l717i3tGDaLr6unwsYvQFl4dYuGHo4&callback=initMap"
async defer></script>

</body>
</html>