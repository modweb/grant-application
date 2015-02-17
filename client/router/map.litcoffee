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
    Router.route 'applicationPreview',
      path: 'application/preview/:_id'
      controller: 'RouteControllers.userApplication'
    Router.route 'printPreview',
      template: 'applicationPreview'
      layoutTemplate: 'printLayout'
      path: 'application/print/:_id'
      controller: 'RouteControllers.userApplication'
