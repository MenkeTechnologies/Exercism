return {
  transform = function(dataset)
      local r = {}
      for k, values in pairs(dataset) do
          for _, v in pairs(values) do
              r[v:lower()] = k
          end
      end

      return r
  end
}
