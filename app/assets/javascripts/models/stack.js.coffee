Kanban.Stack = DS.Model.extend
  title: DS.attr('string')
  position: DS.attr('number')
  project: DS.belongsTo('Kanban.Project')
