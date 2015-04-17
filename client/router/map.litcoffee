# Routes

    Router.route '/',
      onBeforeAction: ->
        if Meteor.userId()?

TODO: user roles is broken and this doesn't work for admin redirects until
https://github.com/alanning/meteor-roles/issues/61 is fixed.

          console.log Meteor.user(), this
          if Roles.userIsInRole Meteor.userId(), ['admin', 'superadmin']
            this.redirect 'admin'
          else if Roles.userIsInRole Meteor.userId(), ['panelist']
            this.redirect 'reviewApplications'
          else
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
    Router.route 'submit',
      path: 'application/submit/:_id'
      controller: 'RouteControllers.userApplication'
    Router.route 'reviewApplications',
      controller: 'RouteControllers.admin'

Admin routes

    Router.route 'admin',
      path: 'admin'
      controller: 'RouteControllers.admin'
