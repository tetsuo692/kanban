# DS.RESTAdapter.reopen
#   didFindHasMany: (store, type, payload, key) ->
#     loader = DS.loaderFor(store);
#     loader.populateArray = (references) ->
#       store.loadHasMany record, key, references.map (reference) ->
#         reference.id
#       get(this, 'serializer').extractMany(loader, payload, type);
#   findHasMany: (store, record, relationship, details) ->
#     count = details['count']
#     url = ["",this.namespace, details['url']].join('/')
#     adapter = this
#     serializer = this.serializer
#     this.ajax(url, "GET").then (json) ->
#       # Ember.run(adapter, 'didFindHasMany', store, relationship.type, json, relationship.key)
#       ids = json[relationship.key].mapProperty('id')
#       store.loadMany(relationship.type, ids, json[relationship.key])
#       store.loadHasMany(record, relationship.key, ids)


Kanban.Store = DS.Store.extend
  revision: 12
  adapter: DS.RESTAdapter.create
    bulkCommit: false
    namespace: 'api/v1'



