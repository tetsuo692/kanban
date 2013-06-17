Kanban.ProjectsIndexController = Ember.ArrayController.extend
  addProject: ->
    Kanban.ProjectsNewView.popup()
  sortProperties: ['updated_at']
  sortAscending: true
  groupProjects: (->
    number = 4
    @get('content').eachSlice(number)
    ).property('content.@each')

Kanban.ProjectsShowController = Ember.ObjectController.extend
  needs: ['stacks']