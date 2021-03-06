    @Attachments = new FS.Collection 'attachments',
      stores: [new FS.Store.GridFS 'attachments']
      filter:
        maxSize: 16000000
        onInvalid: (message) ->
          if Meteor.isClient
            alert 'File size exceeds 16MB.'

    Attachments.allow
      insert: (userId, doc) ->
        userId?
      update: (userId, doc, fields, modifier) ->
        yes or userId? and doc.owner is userId
      download: (userId, doc) ->
        yes or (userId? and doc.owner is userId) or Roles.userIsInRole userId, ['admin', 'superadmin']
      remove: (userId, doc) ->
        console.log 'is super admin:', Roles.userIsInRole userId, ['superadmin']
        Roles.userIsInRole userId, ['superadmin']

    Attachments.deny
      remove: (userId, doc) ->
        console.log 'is super admin:', Roles.userIsInRole userId, ['superadmin']
        not Roles.userIsInRole userId, ['superadmin']
