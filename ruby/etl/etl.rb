=begin
Write your code for the 'ETL' exercise in this file. Make the tests in
`etl_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/etl` directory.
=end

class ETL
  def self.transform(old)

    old.inject({}) { |acc, n|
      n[1].each { acc[_1.downcase] = n[0] }
      acc
    }

  end
end
