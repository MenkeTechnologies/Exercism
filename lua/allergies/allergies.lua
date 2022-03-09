local food = {
    eggs=1,
    peanuts=2,
    shellfish=4,
    strawberries=8,
    tomatoes=16,
    chocolate=32,
    pollen=64,
    cats=128,
}

local function allergic_to(mask, which)
    return mask & food[which] > 0
end

local function list(score)
    local map = {}
    for k, v in pairs(food) do
        if allergic_to(score, k) then
            table.insert(map, k)
        end
    end
    table.sort(map, function (a, b) return food[a] < food[b] end)
    return map
end

return {
  list = list,
  allergic_to = allergic_to
}
