Kanban.Project = DS.Model.extend
  title: DS.attr('string')
  stacks: DS.hasMany('Kanban.Stack', {embedded: true})
