module.exports = class

  constructor: () ->
    @db = []
  add: (student, level) ->
    for entry in @db
      return false if entry.name == student
    @db.push {name: student, grade: level}
    @db.sort (a, b) -> a.grade - b.grade || a.name.localeCompare b.name
    true
  roster: () ->
    entry.name for entry in @db
  grade: (level) ->
    entry.name for entry in @db when entry.grade == level
