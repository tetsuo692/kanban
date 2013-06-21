Kanban.ProjectsIndexController = Ember.ArrayController.extend
  sortProperties: ['updated_at']
  sortAscending: true
  groupProjects: (->
    number = 4
    @get('content').eachSlice(number)
    ).property('content.@each')
  newProject: ->
    @send('modalNewProject')

Kanban.ProjectsShowController = Ember.ObjectController.extend
  needs: ['stacks']