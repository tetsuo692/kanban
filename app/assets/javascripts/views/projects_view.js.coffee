Kanban.ProjectsView = Ember.View.extend
  templateName: 'projects'

Kanban.ProjectsNewView = Kanban.ProjectsView.extend
  templateName: 'projects/new'
  tagName: 'form'
  classNames: 'modal fade in form-custom-field-modal'.w()
  didInsertElement: ->
    @$().modal 'show'
  willDestroyElement: ->
    @$().modal 'hide'