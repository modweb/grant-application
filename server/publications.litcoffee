# Publications

    Meteor.publish 'userApplications', ->
      GeneralSupportApplications.find userId: this.userId

    Meteor.publish 'userApplication', (id) ->
      criteria = _id: id
      if Roles.userIsInRole this.userId, ['admin','superadmin']
        GeneralSupportApplications.find criteria
      else
        criteria = _.extend criteria,
          userId: this.userId
        GeneralSupportApplications.find criteria

    Meteor.publish 'metaApplications', ->
      MetaApplications.find()

    Meteor.publish 'attachment', (userAppliationId) ->
      application = GeneralSupportApplications.findOne userAppliationId
      if not application?.attachments?
        Attachments.find no
      else
        Attachments.find _id: $in: application?.attachments if application?.attachments?.length > 0

    Meteor.publish 'allUserApplications', ->
      if Roles.userIsInRole this.userId, ['admin','superadmin']
        GeneralSupportApplications.find()
