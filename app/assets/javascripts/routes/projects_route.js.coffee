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