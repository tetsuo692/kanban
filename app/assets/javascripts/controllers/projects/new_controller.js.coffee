Kanban.ProjectsNewController = Ember.ObjectController.extend
  submit: ->
    @send('save', @get('content'))