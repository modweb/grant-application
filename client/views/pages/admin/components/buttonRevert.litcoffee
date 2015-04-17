    Template.buttonRevert.events
      'click .revert-app': (event, template) ->
        console.log "revert app id #{Template.currentData()._id}"
        Meteor.call 'revertApplication', Template.currentData()._id, (error, result) ->
          if error?
            sweetAlert 'Oh no!', error.message, 'error'
          else
            sweetAlert 'It worked!', 'The application was successfully reverted.', 'success'
