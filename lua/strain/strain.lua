local function keep(lst, pred)
    local out = {}
    for _, v in ipairs(lst) do if pred(v) then out[#out + 1] = v end end
    return out
end
return {keep = keep, discard = function (lst, pred) return keep(lst, function(x) return not pred(x) end) end }
