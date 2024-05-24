module EliudsEggs
  def self.egg_count(n)
    n.digits(2).filter{ _1 > 0}.count
  end
end
