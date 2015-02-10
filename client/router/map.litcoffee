# Router map

    Router.map ->
      @route 'home', path: '/'
      @route 'myApplications',
        controller: 'RouteControllers.userApplications'
