Kanban.Stack = DS.Model.extend
  title: DS.attr('string')
  project: DS.attr('references')
  position: DS.attr('number')
