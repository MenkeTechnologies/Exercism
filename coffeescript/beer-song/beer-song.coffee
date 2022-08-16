class BeerSong
  verse: (num) ->
    switch num
      when 0 then 'No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall.'
      when 1 then '1 bottle of beer on the wall, 1 bottle of beer. Take it down and pass it around, no more bottles of beer on the wall.'
      when 2 then '2 bottles of beer on the wall, 2 bottles of beer. Take one down and pass it around, 1 bottle of beer on the wall.'
      else "#{num} bottles of beer on the wall, #{num} bottles of beer. Take one down and pass it around, #{num - 1} bottles of beer on the wall."
  sing: (start, end = 0) ->
    (@verse(i) for i in [start..end]).join(' ')
module.exports = BeerSong

