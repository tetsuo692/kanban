describe 'Project', ->
  beforeEach ->
    Ember.testing = true

  describe 'Title', ->
    it 'add a title', ->
      Ember.run ->
        project = Kanban.Project.createRecord
          title: 'Yo'
        expect(project.get('title')).toEqual('Yo')
