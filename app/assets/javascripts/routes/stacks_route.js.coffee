Kanban.StacksRoute = Ember.Route.extend
  events:
    save: (stack) ->
      project = stack.get('project')
      if stack.get('isDirty')
        _this = @
        stack.one 'didCreate', ->
          Ember.run.next _this, ->
            @send('show', project)
        stack.one 'becameInvalid', ->
          Ember.run.next _this, ->
            @send('show', project)
        stack.one 'didUpdate', ->
          Ember.run.next _this, ->
            @send('show', project)
        stack.get('store').commit()
      else
        @send('show', project)
    show: (project) ->
      @transitionTo('projects.show', project)
Kanban.StacksEditRoute = Ember.Route.extend
  setupController: (controller, model) ->
    controller.set('content', model)
    @controllerFor('stacks').set('project', model.get('project'))
