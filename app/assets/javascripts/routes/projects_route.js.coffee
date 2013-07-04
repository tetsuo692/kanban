Kanban.ProjectsRoute = Ember.Route.extend({
  events: {
    modalNewProject: ->
      @render('projects/new', {outlet: 'modal', into: 'application'})
      controller = @controllerFor('projects.new')
      if controller
        controller.set('model', Kanban.Project.createRecord({title: 'blank'}))
    closeModal: ->
      @render('modal/hide', {into: 'application', outlet: 'modal'});
  }
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
  renderTemplate: ->
    @render('projects/index', {controller: 'projects.index'})
