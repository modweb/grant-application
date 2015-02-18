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

      userApplication: RouteController.extend
        waitOn: ->
          [
            Meteor.subscribe 'userApplication', this.params._id
            Meteor.subscribe 'metaApplications'
            Meteor.subscribe 'attachment', this.params._id
          ]
        data: ->
          userApplication = GeneralSupportApplications.findOne()
          metaApplication = MetaApplications.findOne userApplication?.metaApplicationId
          data =
            userApplication: userApplication
            metaApplication: metaApplication
