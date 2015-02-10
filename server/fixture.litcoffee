# Fixtures

## Meta Applications

    if MetaApplications.find().count() is 0
      metaApplications = [
        name: 'Community Arts Development Grant Application'
        shortcode: 'comm-arts-dev'
        deadlineDate: new Date Date.UTC 2015, 5, 25
      ,
        name: 'General Operating Support Grant Application'
        shortcode: 'gen-op-support'
        deadlineDate: new Date Date.UTC 2015, 6, 30
      ]

      countInserted = 0
      _.each metaApplications, (metaApplication) ->
        MetaApplications.insert metaApplication
        countInserted += 1

      console.log "MetaApplication fixtures created (#{countInserted})"
