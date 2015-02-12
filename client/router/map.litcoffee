# Routes

    Router.route '/', ->
      if Meteor.userId()?
        this.redirect 'myApplications'
      else
        this.redirect 'atSignIn'
    Router.route 'myApplications',
        controller: 'RouteControllers.userApplications'
    Router.route 'applicationEdit',
        path: 'application/edit/:_id'
        controller: 'RouteControllers.userApplication'
    Router.route 'applicationEditSection',
        path: 'application/edit/:_id/:section'
        controller: 'RouteControllers.userApplication'
