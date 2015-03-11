    Template.applicationEdit.helpers
      sectionProperty: ->
        (Session.get 'section')?.property
      sectionDescription: ->
        (Session.get 'section')?.description
      doc: -> this.userApplication
      localTimeModified: ->
        moment(this.userApplication.timeModified).format 'dddd, MMMM Do YYYY, h:mm:ss a'
      buttonContent: ->
        sectionProperty = (Session.get 'section').property
        section = _.findWhere this.metaApplication.sections, property: sectionProperty
        section?.buttonContent or 'Save Changes'

    Template.applicationEdit.events
      'click .section-label': (event) ->
        Session.set 'section', this
      'click .sections-title': (event) ->
        Session.set 'section', null

    Template.applicationEdit.rendered = ->

Set to the first section of the application

      section = _.first this.metaApplication?.sections
      Session.set 'section', section?.property
