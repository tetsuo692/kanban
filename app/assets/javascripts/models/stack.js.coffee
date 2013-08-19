Kanban.Stack = DS.Model.extend Ember.Validations.Mixin
Kanban.Stack.reopen
  title: DS.attr('string')
  position: DS.attr('number')
  project: DS.belongsTo('Kanban.Project')
  stories: DS.hasMany('Kanban.Story')
  validations:
    title:
      presence: true
