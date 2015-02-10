    Template.myApplications.helpers

Combine available applications with user applications

      applications: ->
        userApplications = this.userApplications
        applications = _.map this.metaApplications, (metaApplication) ->
          userApplication = _.findWhere userApplications, metaApplicationId: metaApplication._id
          metaApplication.userApplication = userApplication if userApplication?
          return metaApplication
        console.log applications
        return applications
