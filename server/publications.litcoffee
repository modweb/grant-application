# Publications

    Meteor.publish 'userApplications', ->
      GeneralSupportApplications.find userId: this.userId

    Meteor.publishComposite 'userApplication', (id) ->
      find: ->
        criteria = _id: id
        if Roles.userIsInRole this.userId, ['admin','superadmin']
          GeneralSupportApplications.find criteria
        else
          criteria = _.extend criteria,
            userId: this.userId
        GeneralSupportApplications.find criteria
      children: [
        find: (userApplication) ->
          applicationIds = userApplication.attachments or []
          Attachments.find _id: $in: applicationIds
      ]

    Meteor.publish 'metaApplications', ->
      MetaApplications.find()

    Meteor.publish 'attachment', (attachmentIds) ->
      Attachments.find _id: $in: attachmentIds

    Meteor.publish 'allUserApplications', ->
      if Roles.userIsInRole this.userId, ['admin','superadmin']
        GeneralSupportApplications.find()
