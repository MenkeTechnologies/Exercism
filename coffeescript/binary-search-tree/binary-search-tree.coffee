module.exports = class BinarySearchTree
  constructor: (@data) ->
  insert: (value) ->
    if value > @data
      @right?.insert(value) || @right = new BinarySearchTree(value)
    else
      @left?.insert(value) || @left = new BinarySearchTree(value)

  each: (f) ->
    @left?.each f
    f @data
    @right?.each f
