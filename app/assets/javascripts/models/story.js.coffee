# for more details see: http://emberjs.com/guides/models/defining-models/
Kanban.Story = DS.Model.extend Ember.Validations.Mixin
Kanban.Story.reopen
  title: DS.attr 'string'
  description: DS.attr 'string'
  stack: DS.belongsTo 'Kanban.Stack'
  position: DS.attr 'number'
  validations:
    title:
      presence: true
    description:
      presence: true
