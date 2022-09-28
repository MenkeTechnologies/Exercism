local function verse(num)
    if num == 0 then
        return 'No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n'
    elseif num == 1 then
        return '1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n'
    elseif num == 2 then
        return '2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n'
    else
        return num..' bottles of beer on the wall, '..num..' bottles of beer.\nTake one down and pass it around, '..(num-1)..' bottles of beer on the wall.\n'
    end
end
return {
    verse = verse,
    sing = function(start, stop)
        local song = {}
        for i = start, stop or 0, -1 do
            table.insert(song, verse(i))
        end
        return table.concat(song, '\n')
    end
}
