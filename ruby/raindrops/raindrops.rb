class Raindrops
  @@dict = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}

  def self.convert(n)
    r = @@dict.map { n % _1 == 0 ? _2 : ''}.join
    r.empty? ? n.to_s : r
  end

end
