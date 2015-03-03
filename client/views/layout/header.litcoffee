# Header helpers

    Template.header.helpers
      navStyle: ->
        if Meteor.user()?
          ''
        else
          'padding: 40px 0 0;'
    Template.header.events
      'click #at-nav-link': (event) ->
        if Meteor.user() then AccountsTemplates.logout()
      'click .logout': (event) ->
        AccountsTemplates.logout()
