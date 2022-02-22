module ETL
  def self.transform(input : Hash(String, Array(String)))
    input.reduce(Hash(String, Int32).new) {|acc,n|
      n[1].each {|v| acc[v.downcase] = n[0].to_i}
      acc
    }
  end
end
