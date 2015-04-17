    filteredApplications = (submitted) -> ->
      metaApplications = this.metaApplications.fetch()
      userApplications = _.filter this.userApplications.fetch(), (application) -> application.submitted is submitted
      applications = _.map userApplications, (userApplication) ->
        metaApplication = _.findWhere metaApplications, _id: userApplication?.metaApplicationId
        appliation =
          metaApplication: metaApplication
          userApplication: userApplication
      _.sortBy applications, (application) -> application.metaApplication.name

    Template.reviewApplications.helpers
      applicationsSubmitted: filteredApplications yes
