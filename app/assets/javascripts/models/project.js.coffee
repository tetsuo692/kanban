Kanban.Project = DS.Model.extend Ember.Validations.Mixin

Kanban.Project.reopen
  title: DS.attr('string')
  updated_at: DS.attr('date', {readOnly: true})
  stacks: DS.hasMany('Kanban.Stack')
  validations:
    title:
      presence: true
