App.messages = App.cable.subscriptions.create "MessagesChannel",
  connected: ->

  disconnected: ->

  received: (data) ->
    $('#messages').html(data.messages)
