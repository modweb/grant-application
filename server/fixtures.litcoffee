# Fixtures

## Meta Applications

    if MetaApplications.find().count() is 0
      metaApplications = [
        name: 'Community Arts Development Grant Application'
        shortcode: 'comm-arts-dev'
        deadlineDate: new Date Date.UTC 2015, 5, 25
        sections: [
          property: 'organizationalIntro'
          label: 'Organizational Introduction'
        ,
          property: 'publicBenefitAndAccess'
          label: 'Public Benefit and Access'
        ,
          property: 'artisticAndCulturalVibrancy'
          label: 'Artistic and Cultural Vibrancy'
        ,
          property: 'organizationalCapacity'
          label: 'Organizational Capacity'
        ,
          property: 'attachments'
          label: 'Attachments'
        ]
      ,
        name: 'General Operating Support Grant Application'
        shortcode: 'gen-op-support'
        deadlineDate: new Date Date.UTC 2015, 6, 30
        sections: [
          property: 'organizationalIntro'
          label: 'Organizational Introduction'
        ,
          property: 'publicBenefitAndAccess'
          label: 'Public Benefit and Access'
        ,
          property: 'publicBenefitAndAccessGoals'
          label: 'Public Benefit and Access (Goals)'
        ,
          property: 'artisticAndCulturalVibrancy'
          label: 'Artistic and Cultural Vibrancy'
        ,
          property: 'artisticAndCulturalVibrancyGoals'
          label: 'Artistic and Cultural Vibrancy (Goals)'
        ,
          property: 'organizationalCapacity'
          label: 'Organizational Capacity'
        ,
          property: 'organizationalCapacityGoals'
          label: 'Organizational Capacity (Goals)'
        ,
          property: 'attachments'
          label: 'Attachments'
        ]
      ]

      countInserted = 0
      _.each metaApplications, (metaApplication) ->
        MetaApplications.insert metaApplication
        countInserted += 1

      console.log "MetaApplication fixtures created (#{countInserted})"
