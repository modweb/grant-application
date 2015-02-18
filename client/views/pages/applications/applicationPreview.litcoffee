    Template.applicationPreview.rendered = ->
      if Router.current().route.getName() is 'printPreview'
        window.print()
