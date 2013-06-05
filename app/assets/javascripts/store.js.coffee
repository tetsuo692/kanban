Kanban.Store = DS.Store.extend
  adapter: DS.RESTAdapter.create
    bulkCommit: false
    namespace: 'api/v1'



