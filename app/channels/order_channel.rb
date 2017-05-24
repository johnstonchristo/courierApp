class OrderChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    id = params['id']
    stream_from "order_channel_#{id}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    stream_from "order_channel"
  end
end
