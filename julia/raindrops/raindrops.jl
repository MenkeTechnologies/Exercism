function raindrops(number::Int)
    dict = [(3,"Pling"), (5,"Plang"), (7,"Plong")]
    r = Base.mapfoldl(
        pair -> number % first(pair) == 0 ? last(pair) : "",
        *,
        dict)
    isempty(r) ? string(number) : r
end
