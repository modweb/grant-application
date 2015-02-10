    Template.applicationListItem.events
      'click .create-application': (event) ->
        Meteor.call 'createApplication', this.shortcode
