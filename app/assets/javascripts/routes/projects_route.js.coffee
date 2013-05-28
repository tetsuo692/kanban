Kanban.ProjectsRoute = Ember.Route.extend({

})

Kanban.ProjectsIndexRoute = Kanban.ProjectsRoute.extend
  model: ->
    Kanban.Project.find()
  setupController: (controller, model) ->
    controller.set('projects', model)

Kanban.ProjectsShowRoute = Kanban.ProjectsRoute.extend
  setupController: (controller, model) ->
    @controllerFor('stacks.index').set('content', model.get('stacks.content'))
    controller.set('content', model)

Kanban.ProjectsNewRoute = Kanban.ProjectsRoute.extend
  model: ->
    Kanban.Project.createRecord()
  setupController: (controller, model) ->
    controller.set('content', model)