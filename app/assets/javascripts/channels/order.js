App.order = App.cable.subscriptions.create({
  channel: "OrderChannel",
  id: window.location.pathname.slice(8)

}, {
  connected: function () {
    // console.log("A new user has joined the channel");
  },
  disconnected: function () {

  },
  received: function ( data ) {
    console.log(data.location);
    console.log("A new user has joined");
  }
});
