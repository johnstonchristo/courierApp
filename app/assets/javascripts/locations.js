var geo_options = {
  enableHighAccuracy: true,
  maximumAge        : 30000,
  timeout           : 27000
};

var checkLocation = function() {
  navigator.geolocation.watchPosition(function(position) {
    App.order.perform("update_position", {
      latitude: position.coords.latitude,
      longitude: position.coords.longitude
    });
    // console.log(position.coords.latitude, position.coords.longitude);
  }, function () {}, geo_options);
};
