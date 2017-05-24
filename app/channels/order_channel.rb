class OrderChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    id = params['id']
    stream_from "order_channel_#{id}"
  end

  def receive( data )
    stream_from "order_channel_#{id}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    stream_from "order_channel"
  end

  def random_method
    id = params['id']
    ActionCable.server.broadcast "order_channel_#{id}", message: "alkanslkn"
  end

  def update_position data
    id = params['id']
    ActionCable.server.broadcast "order_channel_#{id}", lat: data["latitude"], long: data["longitude"]
  end
end
