    Template.applicationEdit.helpers
      sectionProperty: ->
        (Session.get 'section')?.property
      doc: -> this.userApplication

    Template.applicationEdit.events
      'click .section-label': (event) ->
        Session.set 'section', this
      'click .sections-title': (event) ->
        Session.set 'section', null

    Template.applicationEdit.rendered = ->

Set to the first section of the application

      section = _.first this.metaApplication?.sections
      Session.set 'sectionProperty', section?.property
