describe 'Stack', ->
  beforeEach ->
    Ember.testing = true
  describe 'Title', ->
    it 'add a title', ->
      Ember.run ->
        stack = Kanban.Stack.createRecord
          title: 'Yo'
        expect(stack.get('title')).toEqual('Yo')