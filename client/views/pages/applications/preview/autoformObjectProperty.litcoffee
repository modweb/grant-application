    Template.autoformObjectProperty.helpers
      fileUpload: ->

If this.value is a string of 17 character strings, we gots uploads!

        return no if not _.isArray this.value
        isArrayOfMongoIds =  _.every this.value, (val) -> (_.isString val) and (val.length is 17)
        isArrayOfMongoIds

      uploadIds: ->

Return an array of objects so {{#each}} works properly

        _.map this.value, (val) -> _id: val
