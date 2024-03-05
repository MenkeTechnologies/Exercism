ListOps = require './list-ops'

describe "List Ops", ->
    it "append empty lists", ->
      list1 = []
      list2 = []
      result = ListOps.append list1, list2
      expect(result).toEqual []

    it "append -> list to empty list", ->
      list1 = []
      list2 = [1, 2, 3, 4]
      result = ListOps.append list1, list2
      expect(result).toEqual [1, 2, 3, 4]

    it "append -> empty list to list", ->
      list1 = [1, 2, 3, 4]
      list2 = []
      result = ListOps.append list1, list2
      expect(result).toEqual [1, 2, 3, 4]

    it "append -> non-empty lists", ->
      list1 = [1, 2]
      list2 = [2, 3, 4, 5]
      result = ListOps.append list1, list2
      expect(result).toEqual [1, 2, 2, 3, 4, 5]

    it "concatenate -> empty list", ->
      lists = []
      result = ListOps.concat lists
      expect(result).toEqual []

    it "concatenate -> list of lists", ->
      lists = [[1, 2], [3], [], [4, 5, 6]]
      result = ListOps.concat lists
      expect(result).toEqual [1, 2, 3, 4, 5, 6]

    it "concatenate -> list of nested lists", ->
      lists = [[[1], [2]], [[3]], [[]], [[4, 5, 6]]]
      result = ListOps.concat lists
      expect(result).toEqual [[1], [2], [3], [], [4, 5, 6]]

    it "filter -> empty list", ->
      list = []
      fn = (x) -> x % 2 == 1
      result = ListOps.filter list, fn
      expect(result).toEqual []

    it "filter -> non-empty list", ->
      list = [1, 2, 3, 5]
      fn = (x) -> x % 2 == 1
      result = ListOps.filter list, fn
      expect(result).toEqual [1, 3, 5]

    it "length -> empty list", ->
      list = []
      result = ListOps.mylength list
      expect(result).toEqual 0

    it "length -> non-empty list", ->
      list = [1, 2, 3, 4]
      result = ListOps.mylength list
      expect(result).toEqual 4

    it "map -> empty list", ->
      list = []
      fn = (x) -> x + 1
      result = ListOps.map list, fn
      expect(result).toEqual []

    it "map -> non-empty list", ->
      list = [1, 3, 5, 7]
      fn = (x) -> x + 1
      result = ListOps.map list, fn
      expect(result).toEqual [2, 4, 6, 8]

    it "fold left -> empty list", ->
      list = []
      initial = 2
      fn = (acc, el) -> el * acc
      result = ListOps.foldl list, fn, initial
      expect(result).toEqual 2

    it "fold left -> direction independent function applied to non-empty list", ->
      list = [1, 2, 3, 4]
      initial = 5
      fn = (acc, el) -> el + acc
      result = ListOps.foldl list, fn, initial
      expect(result).toEqual 15

    it "fold left -> direction dependent function applied to non-empty list", ->
      list = [1, 2, 3, 4]
      initial = 24
      fn = (acc, el) -> el / acc
      result = ListOps.foldl list, fn, initial
      expect(result).toEqual 64

    it "fold right -> empty list", ->
      list = []
      initial = 2
      fn = (acc, el) -> el * acc
      result = ListOps.foldr list, fn, initial
      expect(result).toEqual 2

    it "fold right -> direction independent function applied to non-empty list", ->
      list = [1, 2, 3, 4]
      initial = 5
      fn = (acc, el) -> el + acc
      result = ListOps.foldr list, fn, initial
      expect(result).toEqual 15

    it "fold right -> direction dependent function applied to non-empty list", ->
      list = [1, 2, 3, 4]
      initial = 24
      fn = (acc, el) -> el / acc
      result = ListOps.foldr list, fn, initial
      expect(result).toEqual 9

    it "reverse -> empty list", ->
      list = []
      result = ListOps.reverse list
      expect(result).toEqual []

    it "reverse -> non-empty list", ->
      list = [1, 3, 5, 7]
      result = ListOps.reverse list
      expect(result).toEqual [7, 5, 3, 1]

    it "reverse -> list of lists is not flattened", ->
      list = [[1, 2], [3], [], [4, 5, 6]]
      result = ListOps.reverse list
      expect(result).toEqual [[4, 5, 6], [], [3], [1, 2]]
