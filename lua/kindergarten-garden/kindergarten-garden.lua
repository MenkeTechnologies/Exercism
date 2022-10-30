local plants = {
  v = 'violets',
  r = 'radishes',
  g = 'grass',
  c = 'clover' }
local name_list = { 'alice', 'bob', 'charlie', 'david', 'eve', 'fred', 'ginny', 'harriet', 'ileana', 'joseph', 'kincaid', 'larry' }

local function get_plants(self, name)
  return self.plant_list[name:lower()] or {}
end

return function(input)
  local lc = input:lower()
  local o = setmetatable({}, {__index = get_plants})
  local plant_list ={}
  for line in lc:gmatch('[%a ]+') do
    local student_index = 1
    for i = 1, #line, 2 do
      if plant_list[name_list[student_index]] == nil then plant_list[name_list[student_index]] = {} end
      table.insert(plant_list[name_list[student_index]], plants[line:sub(i,i)])
      table.insert(plant_list[name_list[student_index]], plants[line:sub(i+1,i+1)])
      student_index = student_index + 1
    end
  end
  o.plant_list = plant_list
  return o
end
