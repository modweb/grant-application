    Template.submit.events
      'click .submit-application': (event) ->
        console.log 'submit app!'
        renderedApplication = Blaze.toHTMLWithData Template.preview, this
        console.log renderedApplication
        Meteor.call 'submitApplication', this.userApplication._id, renderedApplication
