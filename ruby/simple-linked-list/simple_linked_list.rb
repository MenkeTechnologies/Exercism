class Element
  attr_reader :datum
  attr_accessor :next

  def initialize(datum)
    @datum = datum
  end
end

class SimpleLinkedList < Array
  def initialize(ary = [])
    super(ary.map { Element.new(_1) })
  end

  def to_a
    reverse.map { _1.datum }
  end
end
