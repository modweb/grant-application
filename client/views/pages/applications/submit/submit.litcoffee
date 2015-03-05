    Template.submit.helpers
      errorMessage: -> Session.get 'errorMessage'
    Template.submit.events
      'click .submit-application': (event) ->
        renderedApplication = Blaze.toHTMLWithData Template.preview, this
        Meteor.call 'submitApplication', this.userApplication._id, renderedApplication, (error, result) ->

If there's an error, display the modal and set the error message.

          if error?
            Session.set 'errorMessage', error.reason
            ($ '#errorModal').modal 'show'
