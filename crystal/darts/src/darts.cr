module Darts

  def self.score(x,y)
    case (x ** 2 + y ** 2) ** 0.5
      when ..1 then 10
      when ..5 then 5
      when ..10 then 1
      else 0
    end
  end

end
