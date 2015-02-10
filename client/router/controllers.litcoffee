# Route Controllers

    @RouteControllers =
      userApplications: RouteController.extend
        waitOn: ->
          [
            Meteor.subscribe 'userApplications'
            Meteor.subscribe 'metaApplications'
          ]
        data: ->
          metaApplications: MetaApplications.find().fetch()
          userApplications: GeneralSupportApplications.find().fetch()
