# Applications Collections

## Meta-Application

Sections schema.

    SectionSchema = new SimpleSchema
      property:
        type: String
      label:
        type: String
      description:
        type: String
        optional: yes
      buttonContent:
        type: String
        optional: yes

Meta-Applications describe information about the application.

    MetaApplicationsSchema = new SimpleSchema
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

Sections are defined by subschemas. For now, this will not work if these
properties don't match properties on the application schema.

      sections:
        type: [SectionSchema]
        label: 'Sections'

    @MetaApplications = new Mongo.Collection 'metaApplications'
    MetaApplications.attachSchema MetaApplicationsSchema

### Organizational info subschemas

## Application Subschemas

NOTE: nested forms is not supported by autoforms, yet. Use these as nested forms
if/when they're supported.

    AttendanceSubschema = new SimpleSchema
      totalPaidAttendance:
        type: Number
        label: 'Total Paid Attendance'
        optional: yes
      totalFreeAttendance:
        type: Number
        label: 'Total Free Attendance'
        optional: yes
      totalAttendance:
        type: Number
        label: 'Total Attendance'
        optional: yes
      childrenUnder18Paid:
        type: Number
        label: 'Children 18 and Under Paid Attendance'
        optional: yes
      childrenUnder18Free:
        type: Number
        label: 'Children 18 and Under Free Attendance'
        optional: yes
      totalChildrenServed:
        type: Number
        label: 'TOTAL CHILDREN SERVED 18 AND UNDER'
        optional: yes

    StaffSubschema = new SimpleSchema
      fulltimeEmployees:
        type: Number
        label: 'Full-Time Regular Employees'
        optional: yes
      parttimeEmployees:
        type: Number
        label: 'Part-Time Regular Employees'
        optional: yes
      independentContractors:
        type: Number
        label: 'Independent Contractors'
        optional: yes
      internsApprentices:
        type: Number
        label: 'Interns/Apprentices'
        optional: yes
      volunteers:
        type: Number
        label: 'Volunteers'
        optional: yes

    BoardSubschema = new SimpleSchema
      boardMembers:
        type: Number
        label: 'Number of Board Members'
        optional: yes
      boardWithAnnualGift:
        type: Number
        label: 'Number of Board Members Making an Annual Financial Gift to your Organization'
        optional: yes

- - -

    ParticipationSubschema = new SimpleSchema
      totalPaidAttendance:
        type: Number
        label: 'Total Paid Attendance'
        optional: yes
      totalFreeAttendance:
        type: Number
        label: 'Total Free Attendance'
        optional: yes
      totalAttendance:
        type: Number
        label: 'TOTAL ATTENDANCE'
        optional: yes
      childrenUnder18Paid:
        type: Number
        label: 'Children 18 and Under Paid Attendance'
        optional: yes
      childrenUnder18Free:
        type: Number
        label: 'Children 18 and Under Free Attendance'
        optional: yes
      totalChildrenServed:
        type: Number
        label: 'TOTAL CHILDREN 18 AND UNDER SERVED'
        optional: yes
      fulltimeEmployees:
        type: Number
        label: 'Full-Time Regular Employees'
        optional: yes
      parttimeEmployees:
        type: Number
        label: 'Part-Time Regular Employees'
        optional: yes
      independentContractors:
        type: Number
        label: 'Independent Contractors'
        optional: yes
      internsApprentices:
        type: Number
        label: 'Interns/Apprentices'
        optional: yes
      volunteers:
        type: Number
        label: 'Volunteers'
        optional: yes
      boardMembers:
        type: Number
        label: 'Number of Board Members'
        optional: yes
      boardWithAnnualGift:
        type: Number
        label: 'Number of Board Members Making an Annual Financial Gift to Your Organization'
        optional: yes

GENERAL INFORMATION

    GeneralInfoSubschema = new SimpleSchema
      oranizationName:
        type: String
        label: 'Organization Name'
        optional: yes
      federalTaxId:
        type: String
        label: 'Federal Tax ID#'
        optional: yes
      address:
        type: String
        label: 'Address'
        optional: yes
      cityStateZip:
        type: String
        label: 'City/State/Zip'
        optional: yes
      organizationPhoneNumber:
        type: String
        label: 'Organization Telephone Number'
        optional: yes
      websiteAddress:
        type: String
        label: 'Website Address'
        optional: yes
      currentAnnualBudget:
        type: String
        label: "Organization's Current Annual Budget"
        optional: yes
      directorCEOEmail:
        type: String
        label: 'Executive Director/CEO E-mail Address'
        optional: yes
      nameTitleContact:
        type: String
        label: 'Name and Title of Contact for this Grant'
        optional: yes
      phoneContact:
        type: String
        label: 'Contact Phone Number'
        optional: yes
      emailContact:
        type: String
        label: 'Contact Email Address'
        optional:yes

    OrganizationalIntroSubschema = new SimpleSchema
      orgSnapshot:
        type: String
        label: 'Organizational Snapshot: Imagine you cross paths with someone in
        your community who is not familiar with your organization and the value
        you provide in the community. This encounter could be with the CEO of a
        local company or a new community resident. What is the 30-second
        “elevator speech” you would share that best describes your organization,
        your role in the community, and why this person should care? (Up to 500
        total characters, about 100 words)'
        max: 500
        autoform:
          rows: 4
        optional: yes
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
        optional: yes
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
        optional: yes

PUBLIC BENEFIT AND ACCESS

    PublicBenefitAndAccessSubschema = new SimpleSchema
      defineCommunity:
        type: String
        label: 'Define the community or communities your organization serves and
        provides access for. Describe the ways your organization responds to the
        needs/values of identified participants. What socio-economic data,
        geographic location, behaviors, attitudes, and other relevant
        descriptive indicators does your organization use when thinking about
        and reaching out to serve new people? If you present/produce in a
        variety of locations, what are your goals for doing so? What strategies
        do you use to help participants connect fully with your work? (Up to
        2,000 total characters, about 400 words)'
        max: 2000
        autoform:
          rows: 10
        optional: yes
      describeStrategy:
        type: String
        label: 'Describe one strategy your organization implemented last year to
        engage new people (partners, ticket buyers, patrons, visitors, class
        participants, etc.). If successful, why did this strategy work? If
        unsuccessful, what were the factors that caused this strategy not to
        work, and in what ways will you use what you learned to make adjustments
        in the future? (Up to 1,000 total characters, about 200 words)'
        max: 1000
        autoform:
          rows: 5
        optional: yes
      storyParternship:
        type: String
        label: 'Tell a story that illustrates one of the most significant,
        successful partnerships your organization was part of in 2014-15. Why
        did this partnership work? Based on this experience, will you continue
        developing partnerships in 2015-16? (Up to 1,000 total characters, about
        200 words)'
        max: 1000
        autoform:
          rows: 5
        optional: yes
      improveCommunity:
        type: String
        label: "In what ways did your organization improve or benefit the
        community during 2014-15? What data and knowledge have you collected
        about the participants' needs and what is important to them? In what
        ways will this knowledge influence the way your organization operates
        and develops programming in the future? (Up to 1,000 total characters,
        about 200 words)"
        max: 1000
        autoform:
          rows: 5
        optional: yes

ARTISTIC AND CULTURAL VIBRANCY

    ArtisticAndCulturalVibrancySubschema = new SimpleSchema
      howDeveloped:
        type: String
        label: 'Describe how your organization developed its 2014-15 public
        programming. Who was involved in the process of implementing your
        organization’s vision for 2014-15? What strategies did you use to
        collect feedback from key constituents (ticket buyers, board members,
        staff, donors, etc.)? How were final programming decisions made? (Up to
        1,000 total characters, about 200 words)'
        max: 1000
        autoform:
          rows: 5
        optional: yes
      creativeRisk:
        type: String
        label: 'Describe one creative risk your organization took in 2014-15.
        What happened, and in what ways will this experience shape future
        programming? (Up to 1,000 total characters, about 200 words)'
        max: 1000
        autoform:
          rows: 5
        optional: yes
      standardsExcellence:
        type: String
        label: 'What standards do you use to measure and evaluate the artistic
        excellence of programming? How do you know that your organization is
        keeping pace with (or leading in) your respective field? (Up to 1,000
        total characters, about 200 words)'
        max: 1000
        autoform:
          rows: 5
        optional: yes

ORGANIZATIONAL CAPACITY

    OrganizationalCapacitySubschema = new SimpleSchema
      planningProcess:
        type: String
        label: 'Describe your 2014 organizational planning process. How do you
        track success and make strategic changes as necessary? In what ways do
        you communicate your plans and strategic goals to the community? (For
        example, website, social media, brochure, annual meeting, etc.) Who
        leads and manages this process (internally and externally)? Who is
        involved in determining the annual budget to support the plan? What is
        your process for ensuring sound fiscal management? (Up to 1,500 total
        characters, about 300 words)'
        max: 1500
        autoform:
          rows: 8
        optional: yes
      fundraisingStrategies:
        type: String
        label: 'Briefly describe your fundraising strategies. In what ways are
        you diversifying funding streams (individual donors, corporations,
        foundations, public support, earned income, etc.)? In what ways are you
        tracking donor and box office data trends to increase engagement and
        income? (Up to 1,000 total characters, about 200 words)'
        autoform:
          rows: 5
        optional: yes
      professionalDevelopment:
        type: String
        label: 'Describe your organization’s commitment to professional
        development of the administrative team. Are performance reviews
        conducted annually? In what ways is your staff afforded opportunities to
        learn and develop their skills and knowledge in support of the
        organization’s vision and mission? (Up to 1,000 total characters, about
        200 words)'
        autoform:
          rows: 5
        optional: yes
      roleVolunteers:
        type: String
        label: 'Explain the role that volunteers (board and non-board) play in
        helping your organization achieve the mission. How does your
        organization recruit, train, evaluate, and retain volunteers? (Up to 750
        total characters, about 150 words)'
        autoform:
          rows: 4
        optional: yes
      addressChallenges:
        type: String
        label: 'In what ways are you addressing and overcoming challenges with
        organizational capacity, such as staff turnover, marketing challenges,
        or financial/fundraising challenges, etc.? (Up to 750 total characters,
        about 150 words)'
        autoform:
          rows: 4
        optional: yes


    GoalsSubschema = new SimpleSchema
      primaryGoalsPublicBenefit:
        type: String
        label: 'Public Benefit and Access: These goals should be related to your
        program’s impact in the community and linkage with your mission. Primary
        goals: (Up to 500 total characters, about 100 words)'
        max: 500
        autoform:
          rows: 3
        optional: yes
      demonstrateProgressPublicBenefit:
        type: String
        label: 'Public Benefit and Access: In what ways will you measure and demonstrate progress? (Up to
        750 total characters, about 150 words)'
        autoform:
          rows: 4
        optional: yes
      primaryGoalsArtisticVibrancy:
        type: String
        label: 'Artistic and Cultural Vibrancy: Creating quality, mission-driven
        work that inspires and challenges the community. Primary goals: (Up to
        500 total characters, about 100 words)'
        max: 500
        autoform:
          rows: 3
        optional: yes
      demonstrateProgressArtisticVibrancy:
        type: String
        label: 'Artistic and Cultural Vibrancy: In what ways will you measure and demonstrate progress? (Up to
        750 total characters, about 150 words)'
        autoform:
          rows: 4
        optional: yes
      primaryGoalsOrganizationalCapacity:
        type: String
        label: 'Organizational Capacity: Managing for today and tomorrow. Primary
        goals: (Up to 500 total characters, about 100 words)'
        max: 500
        autoform:
          rows: 3
        optional: yes
      demonstrateProgressOrganizationalCapacity:
        type: String
        label: 'Organizational Capacity: In what ways will you measure and demonstrate progress? (Up to
        750 total characters, about 150 words)'
        autoform:
          rows: 4
        optional: yes


## Application Schemas

    @GeneralSupportApplicationsSchema = new SimpleSchema
      metaApplicationId:
        type: String
      userId:
        type: String
        autoValue: ->
          if this.isInsert
            return Meteor.userId()
          else
            this.unset()
      userEmail:
        type: String
        autoValue: ->
          if this.isInsert
            return Meteor.user().emails[0]?.address
          else
            this.unset()
      submitted:
        type: Boolean
        autoValue: ->
          if this.isInsert
            return no
      timeSubmitted:
        type: Date
        optional: yes
      timeModified:
        type: Date
        autoValue: -> new Date()
      generalInfo:
        type: GeneralInfoSubschema
        label: 'General Information'
        optional: yes
      participation:
        type: ParticipationSubschema
        label: 'Organizational Participation (# of People)'
        optional: yes
      organizationalIntro:
        type: OrganizationalIntroSubschema
        label: 'Organizational Introduction'
        optional: yes
      publicBenefitAndAccess:
        type: PublicBenefitAndAccessSubschema
        label: 'Public Benefit and Access'
        optional: yes
      artisticAndCulturalVibrancy:
        type: ArtisticAndCulturalVibrancySubschema
        label: 'Artistic and Cultural Vibrancy'
        optional: yes
      organizationalCapacity:
        type: OrganizationalCapacitySubschema
        label: 'Organizational Capacity'
        optional: yes
      organizationalGoals:
        type: GoalsSubschema
        label: 'Organizational Goals'
        optional: yes
      annualBudgetAttachment:
        type: String
        optional: yes
        label: 'Upload Annual Budget'
        autoform:
          afFieldInput:
            type: 'fileUpload'
            collection: 'Attachments'
      fundersReportAttachment:
        type: String
        optional: yes
        label: "Upload Funder's Report"
        autoform:
          afFieldInput:
            type: 'fileUpload'
            collection: 'Attachments'
      financialStatementsAttachment:
        type: [String]
        optional: yes
        label: 'Upload Financial documents (max 16MB each)'
        maxCount: 5
      'financialStatementsAttachment.$':
        autoform:
          afFieldInput:
            type: 'fileUpload'
            collection: 'Attachments'
      memorandumUnderstandingAttachment:
        type: String
        optional: yes
        label: 'Upload Memorandum of Understanding'
        autoform:
          afFieldInput:
            type: 'fileUpload'
            collection: 'Attachments'


    @GeneralSupportApplications = new Mongo.Collection 'generalSupportApplications'
    GeneralSupportApplications.attachSchema GeneralSupportApplicationsSchema

## Allow

    GeneralSupportApplications.allow

Can only change your own documents

      update: (userId, doc, fields, modifier) -> userId? and (doc.userId is userId) and not doc.submitted
      remove: (userId, doc) -> userId? and Roles.userIsInRole userId, ['superadmin']


## Applications Meteor Methods

    Meteor.methods

### Create a new application

      createApplication: (shortcode) ->

Check the user is logged in

        throw new Meteor.Error 'logged-out', 'You must be logged in to create an application' if not this.userId?

Lookup meta-app by shortcode

        criteria =
          shortcode: shortcode
        metaApplication = MetaApplications.findOne criteria
        throw new Meteor.Error 'unknown-shortcode', "Could not find a meta application with shortcode #{shortcode}" if not metaApplication?

Check to see if the user already has an application

        criteria =
          metaApplicationId: metaApplication._id
          userId: this.userId
        hasExistingApplication = (GeneralSupportApplications.find criteria).count() > 0
        throw new Meteor.Error 'existing-application', "You already have an existing application for meta-app #{metaApplication._id}" if hasExistingApplication

Create the application

        application =
          metaApplicationId: metaApplication._id

        GeneralSupportApplications.insert application

### Check for missing fields

Note, this is some hackery.

      hasNoMissingFields: (id) ->
        application = GeneralSupportApplications.findOne id
        throw new Meteor.Error 'not-found', 'could not find application with id' if not application

Helper function to get properties using dot notation.

        getProperty = (obj, desc) ->
          arr = desc.split '.'
          while arr.length and obj?
            obj = obj[arr.shift()]
          return obj

        metaApplication = MetaApplications.findOne application.metaApplicationId
        throw new Meteor.Error 'not-found', 'could not find the meta application' if not metaApplication

Get section properties

        sections = _.map metaApplication.sections, (section) -> section.property

Get the keys of the schema

        keys = _.keys GeneralSupportApplicationsSchema._schema

Get the schema of the collection

        schema = GeneralSupportApplicationsSchema._schema

Get the userApplication values

        values = application

Map the keys to the values of the userApplication, value is null for missing
values. For schema keys that contain a section that isn't a part of the
metaApplication.sections return null.

        keyValues = _.map keys, (key) ->

`key` is a dot notation string, use helper function to get value.

          value = getProperty values, key

schema type is used to determine if the property should be displayed, or if
the key we're iterating on is a section of the form, which would have a type of
`object`

          schemaKeyType = schema[key].type
          keyParts = key.split '.'
          invalidSection = no
          if (keyParts.length > 1) and not _.contains sections, (_.first keyParts)
            invalidSection = yes
          if _s.contains key, '$'
            invalidSection = yes

Check if key is in a valid section or if it is a section (i.e. object)

          if schemaKeyType is Object or invalidSection
            return
          label = schema[key].label

If `label` does not exist, then `key` is not a part of the schema, return null.
I.e. for the key `_id`.

          if label?
            label: label
            value: value
            key: key

        keyValues = _.without keyValues, undefined
        hasNoMissingFields = _.reduce keyValues, ((memo, keyValue) ->
          memo and !!keyValue.value), yes

### Submit Application

      submitApplication: (id, renderedApplication) ->

lookup application

        application = GeneralSupportApplications.findOne id
        throw new Meteor.Error 'not-found', "Could not find application with id `#{id}`" if not application

        throw new Meteor.Error 'resubmission', 'Cannot resubmit application.' if application.submitted

check that the user is authorized

        throw new Meteor.Error 'not-authorized', 'Only the owner of an application can submit the application.' if application.userId isnt Meteor.userId()

check if the application has missing fields

        hasNoMissingFields = Meteor.call 'hasNoMissingFields', id

If there are missing fields, return `no`

        throw new Meteor.Error 'missing-fields', 'Application is missing fields, please review your application and submit again.' if not hasNoMissingFields

Submit the application

        criteria = _id: id
        modifier =
          $set:
            submitted: yes
            timeSubmitted: new Date()

        GeneralSupportApplications.update criteria, modifier

Bail on the client (i.e. don't try to send email on the client)

        return yes if Meteor.isClient

Send email to user and Culture Works designated admin

        userEmail = Meteor.user().emails[0].address
        applicationPrintLink = Meteor.absoluteUrl "application/print/#{application._id}"
        applicationPreviewLink = Meteor.absoluteUrl "application/preview/#{application._id}"
        html = "<h1>Application submission successful.</h1><p>#{userEmail} succesfully submitted a grant application.<br><a href='#{applicationPreviewLink}'>View Application</a> <a href='#{applicationPrintLink}'>Print Application</a><hr>"
        html += renderedApplication
        email =
          to: userEmail
          from: 'support@creativefuse.org'
          bcc: 'support@creativefuse.org'
          subject: "Culture Works Application submission successful (#{application._id})"
          html: html

        Email.send email

Success!

        return yes

### Remove all applications (superadmin only)

      deleteAllApplications: () ->
        if Roles.userIsInRole Meteor.userId(), ['superadmin']
          console.log 'deleting all apps...'
          GeneralSupportApplications.remove {}
          Attachments.remove {}
          console.log 'successfully deleted all apps.'
        else
          throw new Meteor.Error 'access-denied', 'you must be a superadmin to
          remove all applications.'
