return {
  valid = function(isbn)
    if not isbn:match("^%d[-]?%d%d%d[-]?%d%d%d%d%d[-]?[%dX]$") then
        return false
    end
    isbn = string.reverse(isbn:gsub("[^%dX]", ""))
    local sum = 0
    for i=1, #isbn do
      local char = isbn:sub(i,i)
      if char:match("X") then
          sum = sum + 10
      end
      if char:match("%d") then
        sum = sum + char * i
      end
    end
    return sum % 11 == 0
  end
}
