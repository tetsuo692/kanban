Kanban.ProjectsRoute = Ember.Route.extend
  events:
    save: (project) ->
      if project.get('isDirty')
        _this = @
        project.one 'didCreate', ->
          Ember.run.next _this, ->
            @transitionTo('projects.show', project)
        project.one 'becameInvalid', ->
          Ember.run.next _this, ->
            @transitionTo('projects.new')
        project.one 'didUpdate', ->
          Ember.run.next _this, ->
            @transitionTo('projects.show', project)
        project.get('store').commit()
      else
        @transitionTo('projects.show', project)

Kanban.ProjectsIndexRoute = Kanban.ProjectsRoute.extend
  model: ->
    Kanban.Project.find()

Kanban.ProjectsShowRoute = Kanban.ProjectsRoute.extend
  setupController: (controller, model) ->
    @controllerFor('stacks').set('content', model.get('stacks'))
    controller.set('content', model)

Kanban.ProjectsEditRoute = Kanban.ProjectsRoute.extend
  setupController: (controller, model) ->
    controller.set('content', model)
    @controllerFor('stacks').set('content', model.get('stacks'))

Kanban.ProjectsNewRoute = Kanban.ProjectsRoute.extend
  model: ->
    Kanban.Project.createRecord()
  setupController: (controller, model) ->
    controller.set('content', model)
    controller.set('project', model)

