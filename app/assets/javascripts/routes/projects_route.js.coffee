Kanban.ProjectsRoute = Ember.Route.extend({

})

Kanban.ProjectsIndexRoute = Kanban.ProjectsRoute.extend
  model: ->
    Kanban.Project.find()

Kanban.ProjectsShowRoute = Kanban.ProjectsRoute.extend
  setupController: (controller, model) ->
    @controllerFor('stacks').set('content', model.get('stacks'))
    controller.set('content', model)

Kanban.ProjectsNewRoute = Kanban.ProjectsRoute.extend
  model: ->
    Kanban.Project.createRecord()
  setupController: (controller, model) ->
    controller.set('content', model)
    controller.set('project', model)
  events:
    save: (project) ->
      _this = @
      project.one 'didCreate', ->
        Ember.run.next _this, ->
          @transitionTo('projects.show', project)
      project.one 'becameInvalid', ->
        Ember.run.next _this, ->
          @transitionTo('projects.new')
      project.get('store').commit()
