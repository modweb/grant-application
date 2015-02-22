# Publications

    Meteor.publish 'userApplications', ->
      GeneralSupportApplications.find userId: this.userId

    Meteor.publish 'userApplication', (id) ->
      GeneralSupportApplications.find id

    Meteor.publish 'metaApplications', ->
      MetaApplications.find()

    Meteor.publish 'attachment', -> Attachments.find()

    Meteor.publish 'allUserApplications', -> GeneralSupportApplications.find()
