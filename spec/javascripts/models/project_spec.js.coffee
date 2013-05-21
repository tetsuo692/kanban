describe 'Project', ->
  beforeEach ->
    Ember.testing = true

  describe 'Title', ->
    it 'add a title', ->
      Ember.run ->
        project = Kanban.Project.createRecord
          Title: 'Yo'
        expect(project.get('Title')).toEqual('Yo')
