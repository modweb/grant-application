# Configure Accounts Template

    AccountsTemplates.configure
      confirmPassword: true
      enablePasswordChange: true
      forbidClientAccountCreation: false
      overrideLoginErrors: true
      sendVerificationEmail: false

      showAddRemoveServices: false
      showForgotPasswordLink: true
      showLabels: true
      showPlaceholders: true

      continuousValidation: false
      negativeFeedback: false
      negativeValidation: true
      positiveValidation: true
      positiveFeedback: true
      showValidating: true

      privacyUrl: 'privacy'
      termsUrl: 'terms-of-use'

      homeRoutePath: '/myApplications'
      redirectTimeout: 4000

      texts:
        navSignIn: 'Sign In'
        navSignOut: 'Logout'
        button:
          signUp: 'Register'
        title:
          forgotPwd: 'Recover Your Password'

## Routes

    redirect =
      redirect: ->
        if Roles.userIsInRole Meteor.userId(), ['admin', 'superadmin']
          Router.go 'admin'
        else
          Router.go 'myApplications'
    AccountsTemplates.configureRoute 'changePwd'
    AccountsTemplates.configureRoute 'enrollAccount', redirect
    AccountsTemplates.configureRoute 'forgotPwd'
    AccountsTemplates.configureRoute 'resetPwd'
    AccountsTemplates.configureRoute 'signIn', redirect
    AccountsTemplates.configureRoute 'signUp', redirect
    AccountsTemplates.configureRoute 'verifyEmail'
    AccountsTemplates.configureRoute 'ensureSignedIn'
