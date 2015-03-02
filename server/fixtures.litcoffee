# Fixtures

## Meta Applications

    if MetaApplications.find().count() is 0
      metaApplications = [
        name: 'Community Arts Development Grant Application'
        shortcode: 'comm-arts-dev'
        deadlineDate: new Date Date.UTC 2015, 3, 23
        sections: [
          property: 'generalInfo'
          label: 'General Information'
        ,
          property: 'participation'
          label: 'Organizational Participation'
          description: 'Please provide below the following information regarding your Organization from July 1, 2014 through March 31, 2015'
        ,
          property: 'organizationalIntro'
          label: 'Organizational Introduction'
          description: 'This section of the application is designed to provide
          grant review panelists with basic information about your organization.
          Remember, this is likely a panelist’s first look at your organization.
          Be brief, clear and direct.'
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
          property: 'annualBudgetAttachment'
          label: 'Annual Budget Information'
          description: "Please provide information regarding your organization’s current annual budget:
            <ul>
              <li>Total amount budgeted for the current fiscal year</li>
              <li>Actual figures as on March 31, 2015</li>
              <li>Projections for the end of the fiscal year</li>
              <li><a href='http://cultureworks.org/wp-content/uploads/2015/03/Organizational-Budget-Information-Spreadsheet.xlsx' target='_blank'>Click here</a> to download the excel financial budget form. When you have
          completed it, save and upload below.(max 16MB)</li>
            <ul>"
        ,
          property: 'fundersReportAttachment'
          label: "Funder's report from the Ohio Cultural Data Project"
          description: "Applicants are required to have a completed Cultural
          Data Project Profile for the most recently completed fiscal year that
          is “Review Complete.” (Go to <a href='http://www.ohculturaldata.org' target='_blank'>www.ohculturaldata.org</a>
          and log on. Click on Funder’s Reports. Find Culture Works and click
          the .pdf link. Save the file and upload below."
        ,
          property: 'financialStatementsAttachment'
          label: 'Financial Statements'
          description: 'Community Arts Development applicants are required to
          submit either Audited Financial Statements with an Auditor’s
          Management Letter, or Financial Statements that have been reviewed by
          a CPA. Please scan these documents and upload here. (limit 5 documents)'
        ,
          property: 'memorandumUnderstandingAttachment'
          label: "Memorandum of Understanding"
          description: "Applicants must submit a Memorandum of Understanding
          signed by both the Executive Director/CEO and the Board Chair.
          <a href='http://cultureworks.org/wp-content/uploads/2015/03/MEMORANDUM-OF-UNDERSTANDING.pdf' target='_blank'>Click here</a>
          to download a .pdf of this agreement to sign. Once signed, scan and
          upload below."

        ]
      ,
        name: 'General Operating Support Grant Application'
        shortcode: 'gen-op-support'
        deadlineDate: new Date Date.UTC 2015, 3, 23
        sections: [
          property: 'generalInfo'
          label: 'General Information'
        ,
          property: 'participation'
          label: 'Organizational Participation'
          description: 'Please provide below the following information regarding your Organization from July 1, 2014 through March 31, 2015'
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
          property: 'organizationalGoals'
          label: 'Organizational Goals for 2015-2016'
          description: 'LOOKING FORWARD: 2015-2016 ORGANIZATIONAL GOALS Note:
          You will be asked to track and share your progress on each of these
          questions in your 2015-16 year-end report. Identify your institutional
          goals and outcomes and the ways you plan to measure them in the next
          year as they relate to the following funding criteria. These
          goals/outcomes should be easily attainable from your strategic plan.'
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
