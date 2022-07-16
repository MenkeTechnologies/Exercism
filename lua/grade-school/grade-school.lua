local School = {}
School.__index = School

function School:new()
  return setmetatable({ students = {} }, School)
end

function School:roster()
  return self.students
end

function School:add(name, grade)
  self.students[grade] = self.students[grade] or {}
  table.insert(self.students[grade], name)
  table.sort(self.students[grade])
end

function School:grade(gradeNumber)
  return self.students[gradeNumber] or {}
end

return School
