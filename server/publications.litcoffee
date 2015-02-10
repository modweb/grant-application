# Publications

    Meteor.publish 'userApplications', ->
      GeneralSupportApplications.find userId: this.userId

    Meteor.publish 'metaApplications', ->
      MetaApplications.find()
