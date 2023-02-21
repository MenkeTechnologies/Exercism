return function(n)
  local composites = {}
  return coroutine.create(function()
      for i = 2, n do
        if not(composites[i]) then
          coroutine.yield(i)
          for j = i*i, n, i do
            composites[j] = true
          end
        end
      end
  end)
end
