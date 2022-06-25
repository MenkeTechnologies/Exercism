class ETL
  def self.transform(old)

    old.inject({}) { |acc, n|
      n[1].each { acc[_1.downcase] = n[0] }
      acc
    }

  end
end
