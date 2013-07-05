Kanban.Project = DS.Model.extend
  title: DS.attr('string')
  updated_at: DS.attr('date', {readOnly: true})
  stacks: DS.hasMany('Kanban.Stack')
