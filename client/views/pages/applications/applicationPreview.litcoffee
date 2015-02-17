    Template.applicationPreview.rendered = ->
      console.log Router.current().route.getName(), 'oajsif'
      if Router.current().route.getName() is 'printPreview'
        window.print()
