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

## Users

    createUser = (userData) ->
      id = Accounts.createUser
        username: userData.username
        email: userData.username
        password: 'asdfasdf'

    superadmin = username: 'superadmin'
    admin = username: 'admin'

    if Meteor.users.find(superadmin).count() is 0
      id = createUser superadmin
      Roles.addUsersToRoles id, ['superadmin', 'admin']
      console.log 'created fixture user `superadmin`'
    if Meteor.users.find(admin).count() is 0
      id = createUser admin
      Roles.addUsersToRoles id, ['admin']
      console.log 'created fixture user `admin`'
