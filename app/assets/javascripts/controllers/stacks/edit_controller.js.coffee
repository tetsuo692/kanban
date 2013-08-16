Kanban.StacksEditController = Ember.ObjectController.extend
  submit: ->
    @send('save', @get('content'))