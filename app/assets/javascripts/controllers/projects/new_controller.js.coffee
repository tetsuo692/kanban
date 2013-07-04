Kanban.ProjectsNewController = Ember.ObjectController.extend
  save: ->
    @store.commit()
    @content.addObserver 'id', @, 'afterSave'
  close: ->
    @willClose()
    @destroy
  willClose: Em.K