    filteredApplications = (submitted) -> ->
      metaApplications = this.metaApplications.fetch()
      userApplications = _.filter this.userApplications.fetch(), (application) -> application.submitted is submitted
      applications = _.map userApplications, (userApplication) ->
        metaApplication = _.findWhere metaApplications, _id: userApplication?.metaApplicationId
        appliation =
          metaApplication: metaApplication
          userApplication: userApplication
      _.sortBy applications, (application) -> application.metaApplication.name

    Template.admin.helpers
      applications: ->
        metaApplications = this.metaApplications.fetch()
        applications = _.map this.userApplications.fetch(), (userApplication) ->
          metaApplication = _.findWhere metaApplications, _id: userApplication?.metaApplicationId
          appliation =
            metaApplication: metaApplication
            userApplication: userApplication
        _.sortBy applications, (application) -> application.metaApplication.name
      applicationsSubmitted: filteredApplications yes
      applicationsUnsubmitted: filteredApplications no


    Template.admin.events
      'click .delete-all-apps': (event) ->
        console.log 'delete all apps!'
        Meteor.call 'deleteAllApplications'
