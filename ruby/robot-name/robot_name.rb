=begin
Write your code for the 'Robot Name' exercise in this file. Make the tests in
`robot_name_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/robot-name` directory.
=end
class Robot
  ALL_NAMES = {}

  def initialize
    @alpha = ('A'..'Z').to_a
    reset
  end

  def reset
    loop do
      @name = (1..5).map {
        if _1 < 3
          @alpha[rand(26)]
        else
          rand(10)
        end
      }.join
      if ALL_NAMES[@name].nil?
        ALL_NAMES[@name] = 1
        break
      end
    end
  end

  attr_reader :name

  def self.forget
    ALL_NAMES.clear
  end
end
