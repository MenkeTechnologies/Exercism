local lines = {
  'the horse and the hound and the horn\nthat belonged to ',
  'the farmer sowing his corn\nthat kept ',
  'the rooster that crowed in the morn\nthat woke ',
  'the priest all shaven and shorn\nthat married ',
  'the man all tattered and torn\nthat kissed ',
  'the maiden all forlorn\nthat milked ',
  'the cow with the crumpled horn\nthat tossed ',
  'the dog\nthat worried ',
  'the cat\nthat killed ',
  'the rat\nthat ate ',
  'the malt\nthat lay in ',
  'the house that Jack built.'
}
local house = {
    verse = function(which)
    return 'This is ' .. table.concat(lines, '', #lines - which + 1, #lines)
    end,
    recite = function()
    local verses = {}
    for i = 1, #lines do
        table.insert(verses, verse(i))
    end
    return table.concat(verses, '\n')
    end
}
return house

