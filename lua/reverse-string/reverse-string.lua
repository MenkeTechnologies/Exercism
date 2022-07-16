return function(s)
  local r = ''
  for i = #s, 1, -1 do
    r = r .. s:sub(i,i)
  end
  return r
end
