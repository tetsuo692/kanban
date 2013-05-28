Kanban.Project = DS.Model.extend
  title: DS.attr('string')
  updated_at: DS.attr('date')
  stacks: DS.hasMany('Kanban.Stack')
