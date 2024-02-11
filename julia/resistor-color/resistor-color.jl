colorsdict = Dict("black"=> 0,"brown"=> 1,"red"=> 2,"orange"=> 3,"yellow"=> 4,"green"=> 5,"blue"=> 6,"violet"=> 7,"grey"=>8,"white"=>9)

function colorcode(color)
    haskey(colorsdict, color) ? colorsdict[color] : error("Invalid color")
end
function colors()
    expected_colors = map(pair -> pair[1], sort(collect(colorsdict), by=x -> x[2]))
end
