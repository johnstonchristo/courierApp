var App = App || {};
var courierMarker;

App.order = App.cable.subscriptions.create({
  channel: "OrderChannel",
  id: window.location.pathname.match( /\d+/ )[0]

}, {
  connected: function () {
    if ( order.courier_id === App.currentUser.id ) {
      console.log("The courier joined the page!");
      checkLocation();
    }
    // If the person who joined the channel is the courier
      // Set up the watchPosition stuff
    // console.log( order, App.currentUser );
  },
  disconnected: function () {

  },
  received: function ( data ) {
    if ( data.lat ) {
      var latitude = data.lat;
      var longitude = data.long;

      if ( courierMarker ) {
        courierMarker.setPosition({
          lat: latitude,
          lng: longitude
        });
      } else {
        courierMarker = new google.maps.Marker({
              position: {
                lat: latitude,
                lng: longitude
              },
              map: map,
              icon: 'http://maps.google.com/mapfiles/ms/icons/blue-dot.png'
            });
      }
    }
  }

});
