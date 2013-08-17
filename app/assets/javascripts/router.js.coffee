Kanban.Router.reopen
  location: 'history'
  rootURL: '/'

Kanban.Router.map ->
  @resource 'projects', ->
    @route 'new'
    @route 'show',
      path: '/:project_id'
    @route 'edit',
      path: '/:project_id/edit'
    @resource 'stacks' ,->
      @route 'new'
      @route 'edit',
        path: '/:stack_id/edit'
