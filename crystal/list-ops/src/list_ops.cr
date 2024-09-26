module ListOps(T)
  # Write your code for the 'List Ops' exercise in this file.
  def self.append(list1 : Array(T), list2 : Array(T)) : Array(T)
    result = list1.dup
    list2.each do |item|
      result << item
    end
    result
  end
  def self.concat(lists : Array(Array(T)))
    result = [] of T
    lists.each do |list|
      list.each do |item|
        result << item
      end
    end
    result
  end
  def self.filter(list : Array(T), function : T -> Bool) : Array(T)
    result = [] of T
    list.each do |item|
      if function.call(item)
        result << item
      end
    end
    result
  end
  def self.length(list : Array(T)) : Int
    foldl(list, 0, ->(acc : Int32, _n : T) { acc + 1 })
  end

  def self.map(list : Array(T), function : T -> _)
    result = [] of T
    list.each do |item|
      result << function.call(item)
    end
    result
  end

  def self.foldl(list : Array(T), initial : _, function : _, T -> _)
    acc = initial
    list.each do |item|
      acc = function.call(acc, item)
    end
    acc
  end
  def self.foldr(list : Array(T), initial : _, function : _, T -> _)
    foldl(reverse(list), initial, function)
  end
  def self.reverse(list : Array(T)) : Array(T)
      folder = ->(acc : Array(T), n : T) { acc.unshift n}
      foldl(list, [] of T, folder)
  end
end

