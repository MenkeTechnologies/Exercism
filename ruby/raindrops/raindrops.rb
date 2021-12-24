=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end
class Raindrops

  def self.convert(num)

    str = ''

    if num % 3 == 0
      str += 'Pling'
    end

    if num % 5 == 0
      str += 'Plang'
    end

    if num % 7 == 0
      str += 'Plong'
    end

    if str.empty?
      str = num.to_s
    end

    str

  end

end
