return function(scores_list)
  local highScores = {scores_list = table.unpack(scores_list)}
  function highScores:scores()
    return self.scores_list
  end
  function highScores:latest()
    return self.scores_list[#self.scores_list]
  end
  function highScores:personal_best()
    return math.max(table.unpack(self.scores_list))
  end
  function highScores:personal_top_three()
    local top_three = {}
    local dup = {}
    for i, v in ipairs(self.scores_list) do
      dup[i] = v
    end
    table.sort(dup, function(a,b) return b < a end)
    return {table.unpack(dup, 1, 3)}
  end
  return highScores
end
