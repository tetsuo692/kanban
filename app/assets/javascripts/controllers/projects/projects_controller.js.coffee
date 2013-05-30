Kanban.ProjectsIndexController = Ember.ArrayController.extend
  sortProperties: ['updated_at']
  sortAscending: true

Kanban.ProjectsShowController = Ember.ObjectController.extend
  needs: ['stacks']