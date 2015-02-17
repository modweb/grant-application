# Applications Collections

## Meta-Application

Sections schema.

    SectionSchema = new SimpleSchema
      property:
        type: String
      label:
        type: String

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
        needs/values of identified participants? What socio-economic data,
        geographic location, behaviors, attitudes, and other relevant
        descriptive indicators does your organization use when thinking about
        and reaching out to serve new people. If you present/produce in a
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
        label: 'In what ways did your organization improve or benefit the
        community during 2014-15? What data and knowledge have you collected
        about the participant’s needs and what is important to them? In what
        ways will this knowledge influence the way your organization operates
        and develops programming in the future? (Up to 1,000 total characters,
        about 200 words)'
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
        organization’s vision for 2014-15. What strategies did you use to
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
        keeping pace with (or leading) in your respective field? (Up to 1,000
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
        leads and manages this process (internally, and externally)? Who is
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
        diversifying funding streams – individual donors, corporations,
        foundations, public support, earned income, etc. In what ways are you
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
        organization recruit, train, evaluate and retain volunteers? (Up to 750
        total characters, about 150 words)'
        autoform:
          rows: 4
        optional: yes
      addressChallenges:
        type: String
        label: 'In what ways are you addressing and overcoming challenges with
        organizational capacity, such as staff turnover, marketing challenges,
        or financial/fundraising challenges, etc. (Up to 750 total characters,
        about 150 words)'
        autoform:
          rows: 4
        optional: yes


    GoalsSubschema = new SimpleSchema
      primaryGoals:
        type: String
        label: 'Primary goals: (Up to 500 total characters, about 100 words)'
        max: 500
        autoform:
          rows: 3
        optional: yes
      demonstrateProgress:
        type: String
        label: 'In what ways will you measure and demonstrate progress? (Up to
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
      organizationalIntro:
        type: OrganizationalIntroSubschema
        label: 'Organizational Introduction'
        optional: yes
      publicBenefitAndAccess:
        type: PublicBenefitAndAccessSubschema
        label: 'Public Benefit and Access'
        optional: yes
      publicBenefitAndAccessGoals:
        type: GoalsSubschema
        label: 'Public Benefit and Access: These goals should be related to your
        program’s impact in the community and linkage with your mission.'
        optional: yes
      artisticAndCulturalVibrancy:
        type: ArtisticAndCulturalVibrancySubschema
        label: 'Artistic and Cultural Vibrancy'
        optional: yes
      artisticAndCulturalVibrancyGoals:
        type: GoalsSubschema
        label: 'Artistic and Cultural Vibrancy: Creating quality, mission-driven
        work that inspires and challenges the community.'
        optional: yes
      organizationalCapacity:
        type: OrganizationalCapacitySubschema
        label: 'Organizational Capacity'
        optional: yes
      organizationalCapacityGoals:
        type: GoalsSubschema
        label: 'Organizational Capacity: Managing for today and tomorrow.'
        optional: yes

    @GeneralSupportApplications = new Mongo.Collection 'generalSupportApplications'
    GeneralSupportApplications.attachSchema GeneralSupportApplicationsSchema

## Allow

    GeneralSupportApplications.allow

Can only change your own documents

      update: (userId, doc, fields, modifier) -> userId? and doc.userId is userId


## Applications Meteor Methods

    Meteor.methods

Create a new application

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
