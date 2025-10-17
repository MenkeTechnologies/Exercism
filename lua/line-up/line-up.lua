return {
  format = function(name, n)
    local placement = tostring(n)
    local placed = ""
    if placement:sub(-2) == "11" or 
       placement:sub(-2) == "12" or 
       placement:sub(-2) == "13" then
      placed = n .. "th"
    else 
      placed = n .. (placement:sub(-1) == "1" and "st" or placement:sub(-1) == "2" and "nd" or placement:sub(-1) == "3" and "rd" or "th")
    end
	
	return string.format(
      "%s, you are the %s customer we serve today. Thank you!", 
      name, 
      placed
    )
  end
}
