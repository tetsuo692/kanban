Kanban.Stack = DS.Model.extend Ember.Validations.Mixin
Kanban.Stack.reopen
  title: DS.attr('string')
  position: DS.attr('number')
  project: DS.belongsTo('Kanban.Project')
  validations:
    title:
      presence: true
