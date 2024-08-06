students = [
  'Alice', 'Bob', 'Charlie', 'David', 'Eve', 'Fred',
  'Ginny', 'Harriet', 'Ileana', 'Joseph', 'Kincaid', 'Larry'
]
codes = {
  'G': 'grass',
  'C': 'clover',
  'R': 'radishes',
  'V': 'violets'
}
module.exports = class
  constructor: (diagram) ->
    @diagram = diagram.split('\n').map (row) ->
      row.split('').map (code) ->
        codes[code]
    @plots = {}
    students.forEach (student, index) =>
      @plots[student] = @diagram.map (row) ->
        row.slice(2 * index, 2 * index + 2)
  plants: (student) ->
    @plots[student].flat()
    
