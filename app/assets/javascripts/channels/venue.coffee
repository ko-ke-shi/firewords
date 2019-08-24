App.venue = App.cable.subscriptions.create "VenueChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    $('#poems').html data['poem']

  speak: (poem, group) ->
    @perform 'speak', poem: poem, group: group
