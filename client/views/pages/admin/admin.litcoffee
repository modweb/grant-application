    Template.admin.helpers
      applications: ->
        metaApplications = this.metaApplications.fetch()
        applications = _.map this.userApplications.fetch(), (userApplication) ->
          metaApplication = _.findWhere metaApplications, _id: userApplication?.metaApplicationId
          appliation =
            metaApplication: metaApplication
            userApplication: userApplication
        _.sortBy applications, (application) -> application.metaApplication.name

    Template.admin.events
      'click .delete-all-apps': (event) ->
        console.log 'delete all apps!'
        Meteor.call 'deleteAllApplications'
