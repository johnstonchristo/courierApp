

App.order = App.cable.subscriptions.create({
  channel: "OrderChannel",
  id: window.location.pathname.match( /\d+/ )[0]

}, {
  connected: function () {
    // console.log("A new user has joined the channel");
  },
  disconnected: function () {

  },
  received: function ( data ) {
    // This function will be run by any broadcast in the controllers or the channels


    // You need to decide whether the data that was received
      // Was someone entering the page
        // Log out someone viewed the page
        if ( data.hasOwnProperty( 'order' ) ) {

          console.log("Someone viewed the page");

        } else {

          console.log("The position is changed");

        }


      // Or whether the current position is updating
        // Log out the position is changed



// Object {lat: -33.86991690000001, long: 151.2062138}
// Object {location: Object, order: Object}


    console.log( data );

  }

});
