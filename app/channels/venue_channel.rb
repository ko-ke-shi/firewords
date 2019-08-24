class VenueChannel < ApplicationCable::Channel
  def subscribed
    stream_from "venue_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak (data)
    ActionCable.server.broadcast 'venue_channel', poem: data['poem']
  end
end
