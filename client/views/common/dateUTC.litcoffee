    Template.dateUTC.helpers
      dateUTCPretty: ->
        (moment this.value).format 'MMM Do, gggg, h:mm A'
