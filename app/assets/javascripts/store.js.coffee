Kanban.Store = DS.Store.extend
  adapter: DS.RESTAdapter.create
    bulkCommit: false
    namespace: 'api/v1'

Kanban.Serializer = DS.RESTSerializer.extend
  addAttributes: (data, record) ->
    record.eachAttribute (name, attribute) ->
      if (!attribute.options.readOnly)
        @_addAttribute(data, record, name, attribute.type)
