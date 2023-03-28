module Sublist
  enum Classification
    Equal
    Unequal
    Sublist
    Superlist
  end

  def self.classify(lst1 : Array(Int32), lst2 : Array(Int32)) : Classification
    lst1 = as_string(lst1)
    lst2 = as_string(lst2)
    case {lst1.includes?(lst2), lst2.includes?(lst1)}
    when {false, false}
      Classification::Unequal
    when {false, true}
      Classification::Sublist
    when {true, false}
      Classification::Superlist
    else
      Classification::Equal
    end
  end
  private def self.as_string(list : Array(Int32)) : String
    list.map { |x| "#{x}," }.join
  end
end
