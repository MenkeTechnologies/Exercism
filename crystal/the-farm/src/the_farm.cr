class InvalidCowsError < Exception
  def initialize(n : Int32)
    @message = n < 0 ? "#{n} cows are invalid: there are no negative cows" 
                     : "#{n} cows are invalid: no cows don't need food"
  end
end
module TheFarm
  def self.divide_food(food : FodderCalculator, number_of_cows : Int32)
    begin
        (food.fodder_amount! * food.fattening_factor!) / number_of_cows
    rescue
        0
    end
  end

  def self.validate_input_and_divide_food(food : FodderCalculator, number_of_cows : Int32)
    raise Exception.new("Number of cows must be greater than 0") if number_of_cows < 1
    divide_food(food, number_of_cows)
  end

  def self.validate_number_of_cows(number_of_cows : Int32)
    raise InvalidCowsError.new(number_of_cows) if number_of_cows < 1
  end
end
