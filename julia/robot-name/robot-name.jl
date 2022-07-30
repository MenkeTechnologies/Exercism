using Random
chars='A':'Z'
namelst=String[]

function newname()
    while true
        r = reduce(*, rand(chars, 2)) * reduce(string, rand(0:9,3))
        if r ∉ namelst
            push!(namelst,r)
            return r
        end
    end
end

mutable struct Robot
    name :: String
    function Robot()
        new(newname())
    end
end
function reset!(instance::Robot)
    instance.name=newname()
end
function name(instance::Robot)
    return instance.name
end

