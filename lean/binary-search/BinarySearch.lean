namespace BinarySearch

def find (value : Int) (array : Array Int) : Option Nat := Id.run do
  let mut lo := 0
  let mut hi := array.size

  while lo < hi do
    let mid := (lo + hi) / 2
    if value < array[mid]! then hi := mid
    else if value > array[mid]! then lo := mid + 1
    else return some mid
  none

end BinarySearch
