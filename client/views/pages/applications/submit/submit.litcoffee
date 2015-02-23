    Template.submit.events
      'click .submit-application': (event) ->
        console.log 'submit app!'
        Meteor.call 'submitApplication', this._id
