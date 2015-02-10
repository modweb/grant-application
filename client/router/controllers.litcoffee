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
          ]
        data: ->
          userApplication = GeneralSupportApplications.find().fetch()
          metaApplications = MetaApplications.find().fetch()
          metaApplication = _.findWhere metaApplications, _id: userApplication.metaApplicationId
          data =
            userApplication: userApplication
            metaApplication: metaApplication
