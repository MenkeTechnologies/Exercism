class BinarySearch
  getter list
  def initialize(@list : Array(Int32))
  end
  def find(target)
	lo = 0
    hi = @list.size - 1
    while lo <= hi
      mid = (lo + hi) // 2
      return mid if @list[mid] == target
      if target < @list[mid]
        hi = mid - 1
      else
        lo = mid + 1
      end
    end
	raise ArgumentError.new "value not in array"
  end
end	
