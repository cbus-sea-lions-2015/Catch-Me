$(document).ready(function() {

  $.ajax({
    url: '/all_locations_for_map',
    method: 'GET',
    dataType: 'json'
  }).done(function(locations) {
    console.log(locations);
    console.log(locations[0].longitude);
    function initialize(locations) {
      var center = Math.round(locations.length/2);
      var mapOptions = {
        zoom: 40,
        center: new google.maps.LatLng(locations[center].latitude, locations[center].longitude),
        mapTypeId: google.maps.MapTypeId.ROADMAP
      };
    
      var map = new google.maps.Map(document.getElementById('map-canvas'),
        mapOptions);
        var coords = [];
        var something;
        for(index in locations){
            something = new google.maps.LatLng(locations[index].latitude, locations[index].longitude);
            coords.push(something);
        };
    var flightPlanCoordinates = coords;
      var flightPath = new google.maps.Polyline({
        path: flightPlanCoordinates,
        geodesic: true,
        strokeColor: '#FF0000',
        strokeOpacity: 1.0,
        strokeWeight: 2
      });

      flightPath.setMap(map);
    }

    google.maps.event.addDomListener(window, 'load', initialize(locations));
  });
});
