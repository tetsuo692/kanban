Kanban.ProjectsView = Ember.View.extend
  templateName: 'projects'

Kanban.ProjectsNewView = Bootstrap.ModalPane.extend
  showCloseButton: true
  heading: 'New Project'
  message: 'test'
  primary: 'Save changes'
  secondary: 'Cancel'
  showBackdrop: true
  bodyViewClass: Ember.View.extend
    templateName: 'projects/new_body'
