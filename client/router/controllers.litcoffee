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
          userApplication = GeneralSupportApplications.findOne()
          metaApplication = MetaApplications.findOne userApplication?.metaApplicationId
          data =
            userApplication: userApplication
            metaApplication: metaApplication
      admin: RouteController.extend
        waitOn: ->
          [
            Meteor.subscribe 'allUserApplications'
            Meteor.subscribe 'metaApplications'
          ]
        data: ->
          userApplications = GeneralSupportApplications.find()
          metaApplications = MetaApplications.find()
          data =
            userApplications: userApplications
            metaApplications: metaApplications
