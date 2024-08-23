require "spec"
require "../src/*"

class FodderCalculator
  def initialize(@total_food : Int32 | Float64 | Nil, @animals : Int32 | Float64 | Nil)
  end

  def fodder_amount! : Int32 | Float64
    @total_food.not_nil!
  end

  def fattening_factor! : Int32 | Float64
    @animals.not_nil!
  end
end

describe TheFarm do
  describe "divide_food", tags: "task_id=1" do
    it "success, simple inputs" do
      food = FodderCalculator.new(100, 1)
      TheFarm.divide_food(food, 10).should eq 10
    end

    it "success, decimal inputs" do
      food = FodderCalculator.new(60.5, 1.3)
      TheFarm.divide_food(food, 5).should eq 15.73
    end

    it "error when retrieving fodder amount" do
      food = FodderCalculator.new(nil, 100)
      TheFarm.divide_food(food, 10).should eq 0
    end

    it "error when retrieving fattening factor" do
      food = FodderCalculator.new(1000, nil)
      TheFarm.divide_food(food, 10).should eq 0
    end
  end

  describe "validate_input_and_divide_food", tags: "task_id=2" do
    it "negative cows are invalid" do
      expect_raises(Exception, "Number of cows must be greater than 0") do
        TheFarm.validate_input_and_divide_food(FodderCalculator.new(10, 1), -10)
      end
    end

    it "zero cows are invalid" do
      expect_raises(Exception, "Number of cows must be greater than 0") do
        TheFarm.validate_input_and_divide_food(FodderCalculator.new(10, 1), 0)
      end
    end

    it "success, simple inputs" do
      food = FodderCalculator.new(100, 1)
      TheFarm.validate_input_and_divide_food(food, 10).should eq 10
    end

    it "success, decimal inputs" do
      food = FodderCalculator.new(60.5, 1.3)
      TheFarm.validate_input_and_divide_food(food, 5).should eq 15.73
    end

    it "error when retrieving fodder amount" do
      food = FodderCalculator.new(nil, 100)
      TheFarm.validate_input_and_divide_food(food, 10).should eq 0
    end

    it "error when retrieving fattening factor" do
      food = FodderCalculator.new(1000, nil)
      TheFarm.validate_input_and_divide_food(food, 10).should eq 0
    end
  end

  describe "validate_number_of_cows", tags: "task_id=3" do
    it "big positive number of cows" do
      TheFarm.validate_number_of_cows(80).should eq nil
    end

    it "small positive number of cows" do
      TheFarm.validate_number_of_cows(1).should eq nil
    end

    it "big negative number of cows" do
      expect_raises(InvalidCowsError, "-20 cows are invalid: there are no negative cows") do
        TheFarm.validate_number_of_cows(-20)
      end
    end

    it "small negative number of cows" do
      expect_raises(InvalidCowsError, "-1 cows are invalid: there are no negative cows") do
        TheFarm.validate_number_of_cows(-1)
      end
    end

    it "zero cows are invalid" do
      expect_raises(InvalidCowsError, "0 cows are invalid: no cows don't need food") do
        TheFarm.validate_number_of_cows(0)
      end
    end
  end
end
