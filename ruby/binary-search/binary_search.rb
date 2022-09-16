class BinarySearch
  def initialize(values)
    @values = values
  end

  def search_for(target)
    lo = 0
    hi = @values.length - 1
    while lo <= hi
      mid = (lo + hi) / 2
      return mid if @values[mid] == target
      if target < @values[mid]
        hi = mid - 1
      else
        lo = mid + 1
      end
    end
  end
end

