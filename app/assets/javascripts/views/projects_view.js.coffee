Kanban.ProjectsView = Ember.View.extend
  templateName: 'projects'

Kanban.ProjectsNewView = Ember.View.extend
  elementId: 'modal'
  templateName: 'projects/new'
  layoutName: 'modal/layout'
  didInsertElement: ->
    @$('.modal, .modal-backdrop').addClass('in')