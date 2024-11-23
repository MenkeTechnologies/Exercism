constant lst = {"black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"}

public function colorCode(sequence color)
    return find(color, lst) - 1
end function

public function colors()
    return lst
end function
