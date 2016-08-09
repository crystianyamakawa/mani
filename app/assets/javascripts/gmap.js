$(window).load(function() {
  // confirm("Document load");
  loadScript();
});

var map;

function initialize() {

  var mapOptions = {
          center: new google.maps.LatLng(-23.0814488,-52.4600407),
          zoom: 14,
          mapTypeId: google.maps.MapTypeId.NORMAL,
          panControl: true,
          scaleControl: false,
          streetViewControl: true,
          overviewMapControl: true
        };
        // initializing map
//alert("i1");
        map = new google.maps.Map(document.getElementById("map-canvas"),mapOptions);


        google.maps.event.addListener(map, 'click', function(event) {
          placeMarker(event.latLng);
          });
          placeMarker(new google.maps.LatLng(-23.076889,-52.473419));
          //placeMarker(new google.maps.LatLng(-23.07906059380699,-52.46570348739624));
          //placeMarker(new google.maps.LatLng(-23.077520841320762,-52.46051073074341));
          //placeMarker(new google.maps.LatLng(-23.084785159943724,-52.45291471481323));

  // maringa
        //  placeMarker(new google.maps.LatLng(-23.4109031,-51.9706086));

   // geocoding
      $("#submit_button_geocoding").click(function(){
      confirm("geocoder");
      var geocoding  = new google.maps.Geocoder();
        codeAddress(geocoding);
      });
      $("#submit_button_reverse").click(function(){
        codeLatLng(geocoding);
      });

//alert("i2");
}

function placeMarker(location) {
  var marker = new google.maps.Marker({
    position: location,
    map: map,
    draggable: true,

  });
  var infowindow = new google.maps.InfoWindow({

    content: 'Atendimento: XXXX em Lat:' + location.lat() +
    '<br>Longitude: ' + location.lng()

  });

  google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(map,marker);
    });
}


var info;
function codeLatLng(geocoding){
//  alert("codeLatLng");
  var input = $('#search_box_reverse').val();
  console.log(input);

  var latlngbounds = new google.maps.LatLngBounds();
  var listener;
  var regex = /([1-9])+\.([1-9])+\,([1-9])+\.([1-9])+/g;
  if(regex.test(input)) {
  var latLngStr = input.split(",",2);
  var lat = parseFloat(latLngStr[0]);
  var lng = parseFloat(latLngStr[1]);
  var latLng = new google.maps.LatLng(lat, lng);
  geocoding.geocode({'latLng': latLng}, function(results, status) {
     if (status == google.maps.GeocoderStatus.OK){
       if(results.length > 0){
         //map.setZoom(11);
         var marker;
         map.setCenter(results[1].geometry.location);
         var i;
        info = createInfoWindow("");
         for(i in results){
           latlngbounds.extend(results[i].geometry.location);
             marker = new google.maps.Marker({
             map: map,
             position: results[i].geometry.location
           });

          google.maps.event.addListener(marker, 'click', (function(marker,i) {
            return function() {
            info.setContent(results[i].formatted_address);
            info.open(map,marker);
            }
          })(marker,i));
        }

         map.fitBounds(latlngbounds);
         listener = google.maps.event.addListener(map, "idle", function() {
          if (map.getZoom() > 16) map.setZoom(16);
            google.maps.event.removeListener(listener);
          });
       }
     }
    else{
       alert("Geocoder failed due to: " + status);
     }
  });
  }else{
    alert("Wrong lat,lng format!");
  }
}
function codeAddress(geocoding){
//alert("codeAddress");
  var address = $("#search_box_geocoding").val();
  if(address.length > 0){
    geocoding.geocode({'address': address},function(results, status){
      if(status == google.maps.GeocoderStatus.OK){
        map.setCenter(results[0].geometry.location);
        var marker  =  new google.maps.Marker({
          map: map,
          position: results[0].geometry.location
        });
        }else{
        alert("Geocode was not successful for the following reason: " + status);
      }
    });
  }else{
    alert("Search field can't be blank");
  }
}

function loadScript() {
//alert("1");
	console.log("map loading ...");
  var script = document.createElement('script');
//alert("2");
  script.type = 'text/javascript';
  //'https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyBJYFdplGeKUUEmGZ-vL4ydiSZ09Khsa_o&sensor=false&libraries=drawing'
  script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp' +
    //'&v=3.14'+
    //'&key=AIzaSyBJYFdplGeKUUEmGZ-vL4ydiSZ09Khsa_o'+
    '&libraries=drawing'+
    '&callback=initialize';
//alert("3");
  document.body.appendChild(script);
//alert("4");
}


var marker;
function createMarker(coords, map, title){
  //alert("createMarker");
// confirm("Criar Marca");
  marker = new google.maps.Marker({
    position: coords,
    map: map,
    title: title
  });

}

function createImage(url){
  //alert("createImage");
  var image = {
    url: url,
    // This marker is 32 pixels wide by 32 pixels tall.
    size: new google.maps.Size(32, 32),
    // The origin for this image is 0,0.
    origin: new google.maps.Point(0,0),
    // The anchor for this image is the base of the flagpole at 0,32.
    anchor: new google.maps.Point(0, 32)
  };
  return image;
}

function createCustomMarker(coords,map,title){
//  alert("createCustomMarker");
  marker = new google.maps.Marker({
    position: coords,
    map: map,
    title: title,
    icon: createImage("/assets/icon.png")
  });
}

function createInfoWindow(text){
//  alert("createInfoWindow");
  var infowindow = new google.maps.InfoWindow({
    content: text
  });
  return infowindow;
}

function voltarAtendimento(){
  //window.parent.getElementById("atendimento_lat").value = 'TESTE';
  window.close();
}
