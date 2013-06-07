get = Ember.get
set = Ember.set
Ember.Array.reopen
  eachSlice: (number) ->
    index = -number
    slices = Ember.A([])
    slices if number < 1
    slices = while (index += number) < get(this, 'length')
      @slice(index, index+number)
