# Applications Collections

## Meta-Application

Meta-Applications describe information about the application.

    MetaApplications = new SimpleSchema
      name:
        type: String
        label: 'Application Name'
        max: 150
      shortcode:
        type: String
        label: 'Shortcode (used as an identifier, no spaces)'
        max: 20

TODO: add regex to shortcode

      deadlineDate:
        type: Date
        label: 'Deadline Date'
        autoform:
          type: 'bootstrap-datepicker'

## Application Subschemas

    OrganizationalIntroSubschema = new SimpleSchema
      orgSnapshot:
        type: String
        label: 'Organizational Snapshot: Imagine you cross paths with someone in
        your community who is not familiar with your organization and the value
        you provide in the community. This encounter could be with the CEO of a
        local company, or a new community resident. What is the 30-second
        “elevator speech” you would share that best describes your organization,
        your role in the community, and why this person should care. (Up to 500
        total characters, about 100 words.)'
        max: 500
        autoform:
          rows: 4
      activitiesPast:
        type: String
        label: 'Activities – Past and Future: Provide a sample of your
        organization’s public programming during the current season (2014-15)
        and explain briefly why you feel this is a good representation of your
        organization’s mission. Include the program/project title and a
        one-sentence description. Where applicable, provide web links to your
        website, YouTube channel, etc. (Consider using bit.ly to shorten web
        links and to save characters.)  (Up to 2,000 total characters, about 400
        words)'
        max: 2000
        autoform:
          rows: 10
      activitiesFuture:
        type: String
        label: 'Provide a sample of your organization’s public programming for
        the upcoming season (2015-16) and note why you feel this is an exciting
        example of what motivates your organization. Again, include the
        program/project title and a one-sentence description, and provide web
        links where appropriate. We understand that all upcoming programs may
        not yet be confirmed.  (Up to 2,000 total characters, about 400 words)'
        max: 2000
        autoform:
          rows: 10

## Application Schemas

    @GeneralSupportApplicationsSchema = new SimpleSchema
      organizationalIntro:
        type: OrganizationalIntroSubschema

    @GeneralSupportApplications = new Mongo.Collection 'generalSupportApplications'
    GeneralSupportApplications.attachSchema GeneralSupportApplicationsSchema
