    @Attachments = new FS.Collection 'attachments',
      stores: [new FS.Store.GridFS 'attachments']
      filter:
        maxSize: 16000000, #in bytes

    Attachments.allow
      insert: (userId, doc) -> yes
      update: (userId, doc, fields, modifier) -> yes
      download: (userId) -> yes
