# Router map

    Router.map ->
      @route 'home', path: '/'
      @route 'myApplications',
        controller: 'RouteControllers.userApplications'
      @route 'applicationEdit',
        path: 'application/edit/:_id'
        controller: 'RouteControllers.userApplication'
