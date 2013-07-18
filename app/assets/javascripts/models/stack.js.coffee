Kanban.Stack = DS.Model.extend
  title: DS.attr('string')
  position: DS.attr('number')
  project: DS.belongsTo('Kanban.Project')
  setProjectDirty: (->
    if project = @get('project')
      project.get('stateManager').goToState('updated.uncommitted')
  ).observes('isDirty')
