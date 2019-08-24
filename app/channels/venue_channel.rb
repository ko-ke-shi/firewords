class VenueChannel < ApplicationCable::Channel
  def subscribed
    stream_from "venue_channel"
    stream_for "3"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak (data)
    Poem.create! content: data['poem'], group: data['group']
  end
end
