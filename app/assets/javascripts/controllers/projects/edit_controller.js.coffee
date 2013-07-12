Kanban.ProjectsEditController = Ember.ObjectController.extend
  submit: ->
    @send('save', @get('content'))