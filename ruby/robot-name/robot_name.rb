class Robot
  ALL_NAMES = {}

  @@alpha = ('A'..'Z').to_a

  def initialize
    reset
  end

  def reset
    loop do
      @name = (1..5).map { _1 < 3 ? @@alpha[rand(26)] : rand(10) }.join
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
