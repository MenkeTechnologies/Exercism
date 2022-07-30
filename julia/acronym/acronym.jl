function acronym(s)
    split(s, r"[ _-]+").|> first .|> uppercase |> join
end
