# Iron-router configuration

    Router.configure
      layoutTemplate: 'layout'
      loadingTemplate: 'loading'

## Filters

    filters =
      isLoggedIn: ->
        Router.go 'atSignIn' unless Meteor.loggingIn() or Meteor.user()
        this.next()
      isAdmin: ->
        Roles.userIsInRole Meteor.userId(), ['admin','superadmin']
        this.next()

Login filter, except public routes

    Router.onBeforeAction filters.isLoggedIn,
      except: [
        'home'
        'about'
        'atSignIn'
        'atSignUp'
        'atForgotPwd'
        'atResetPwd'
        'atVerifyEmail'
        'atEnrollAccount'
        'atChangePwd'
      ]

Admin filter

    Router.onBeforeAction filters.isAdmin,
      only: ['admin']
