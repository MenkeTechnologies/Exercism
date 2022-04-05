local Anagram = {}

function Anagram:new(word)

    self.orig = word
    self.sorted = sortStr(word)

    return self
end

function Anagram:match(candidates)

    local r = {}
    for _, str in ipairs(candidates) do
        if str ~= self.orig and sortStr(str) == self.sorted then
            table.insert(r, str)
        end
    end

    return r
end

function sortStr(s)
    local lett = {}
    local lc = s:lower()
    for ch in string.gmatch(lc, ".") do
        table.insert(lett, ch)
    end

    table.sort(lett)

    return table.concat(lett)
end

return Anagram
