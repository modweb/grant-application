    getIcon = (file) ->
      if file
        file = file.toLowerCase()
        icon = 'file-o'
        if file.indexOf('youtube.com') > -1
          icon = 'youtube'
        else if file.indexOf('vimeo.com') > -1
          icon = 'vimeo-square'
        else if file.indexOf('.pdf') > -1
          icon = 'file-pdf-o'
        else if file.indexOf('.doc') > -1 || file.indexOf('.docx') > -1
          icon = 'file-word-o'
        else if file.indexOf('.ppt') > -1
          icon = 'file-powerpoint-o'
        else if file.indexOf('.avi') > -1 || file.indexOf('.mov') > -1 || file.indexOf('.mp4') > -1
          icon = 'file-movie-o'
        else if file.indexOf('.png') > -1 || file.indexOf('.jpg') > -1 || file.indexOf('.gif') > -1 || file.indexOf('.bmp') > -1
          icon = 'file-image-o'
        else if file.indexOf('http://') > -1 || file.indexOf('https://') > -1
          icon = 'link'
        icon

    getTemplate = (file) ->
      file = file.toLowerCase()
      template = 'fileThumbIcon'
      if file.indexOf('.jpg') > -1 || file.indexOf('.png') > -1 || file.indexOf('.gif') > -1
        template = 'fileThumbImg'
      template

    Template.uploadPreview.helpers
      fileUpload: ->
       try
          console.log this
          collection = Attachments
          filefs = Attachments.findOne this
          return null if not filefs?
          filename = filefs.name()
          src = filefs.url()

          template: getTemplate(filename)
          data:
            src: src
            filename: filename
            icon: getIcon(filename)
        catch err
          console.log err
