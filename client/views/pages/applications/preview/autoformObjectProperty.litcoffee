    Template.autoformObjectProperty.helpers
      fileUpload: ->

Remove all null values

        value = this.value

        if _.isArray value
          value = _.without value, null

If this.value is a string of 17 character strings, we gots uploads!

        if (_.isString value) and (value.length is 17) and Attachments.findOne(value)
          return yes
        isArrayOfMongoIds =  (_.isArray value) and _.every value, (val) -> (_.isString val) and (val.length is 17)
        isArrayOfMongoIds

      uploadIds: ->

Return an array of objects so {{#each}} works properly

        value = this.value

        if _.isArray value
          value = _.without value, null

        if _.isArray this.value
          values = _.map value, (val) -> _id: val
        else
          [ _id: value ]
