module Proverb
  def self.recite(wants)
    return wants if wants.empty?
    wants.each.cons_pair.map do |(a, b)|
      "For want of a #{a} the #{b} was lost."
    end.to_a << "And all for the want of a #{wants[0]}."
  end
end
