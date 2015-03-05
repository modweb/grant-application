    Template.autoformObjectProperty.helpers
      fileUpload: ->

If this.value is a string of 17 character strings, we gots uploads!

        try
          if (_.isString this.value) and (this.value.length is 17) and Attachments.findOne(this.value)
            return yes
        catch err
          console.log err
        isArrayOfMongoIds =  (_.isArray this.value) and _.every this.value, (val) -> (_.isString val) and (val.length is 17)
        isArrayOfMongoIds

      uploadIds: ->

Return an array of objects so {{#each}} works properly

        if _.isArray this.value
          _.map this.value, (val) -> _id: val
        else
          [ _id: this.value ]
