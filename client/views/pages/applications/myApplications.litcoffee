    Template.myApplications.helpers

Combine available applications with user applications

      applications: ->
        _.map this.metaApplications, (metaApplication) ->
          userApplication = _.findWhere this.userApplications, metaApplicationId: metaApplication._id
          metaApplication.userApplication = userApplication if userApplication?
          return metaApplication
