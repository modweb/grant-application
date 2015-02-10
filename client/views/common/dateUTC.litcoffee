    Template.dateUTC.helpers
      dateUTCPretty: ->
        (moment.utc this.value).format 'MMM Do, gggg'
