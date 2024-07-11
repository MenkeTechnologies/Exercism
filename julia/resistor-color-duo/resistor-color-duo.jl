code = Dict(zip(("black","brown","red","orange","yellow","green","blue","violet","grey","white"), '0':'9'))

colorcode(colors) = parse(Int, join(code[color] for color in colors[1:2]))
