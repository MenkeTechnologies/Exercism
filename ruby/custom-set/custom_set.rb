class CustomSet
  def initialize(ary)
    @ary = ary.uniq
  end

  def empty?
    @ary.empty?
  end

  def member?(elem)
    @ary.member?(elem)
  end

  def subset?(set)
    @ary.size.zero? || @ary.all? { set.member? _1 }
  end

  def disjoint?(set)
    @ary.none? { set.member? _1 }
  end

  def add(elem)
    @ary << elem
    @ary.uniq!
    @ary
  end

  def size
    @ary.size
  end

  def difference(set)
    @ary.reject { set.member?(_1) }
  end

  def intersection(set)
    @ary.filter { set.member?(_1) }
  end

  def union(set)
    @ary += set.difference(self)
  end

  def ==(other)
    @ary.size == other.size && @ary.all? { other.member? _1 }
  end
end
