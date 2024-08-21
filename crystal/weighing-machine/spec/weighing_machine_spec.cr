require "spec"
require "../src/*"

describe WeighingMachine do
  describe "initialize" do
    it "should initialize the weighing machine with precision 3" do
      weighing_machine = WeighingMachine.new(3, true)
      weighing_machine.@precision.should eq(3)
      weighing_machine.@metric.should be_true
      weighing_machine.@weight.should eq(0.0)
    end

    it "should initialize the weighing machine with precision 5 and metric be true" do
      weighing_machine = WeighingMachine.new(5, true)
      weighing_machine.@precision.should eq(5)
      weighing_machine.@metric.should be_true
      weighing_machine.@weight.should eq(0.0)
    end

    it "should initialize the weighing machine with precision 3 and metric false" do
      weighing_machine = WeighingMachine.new(3, false)
      weighing_machine.@precision.should eq(3)
      weighing_machine.@metric.should be_false
      weighing_machine.@weight.should eq(0.0)
    end

    it "should allow the weigh method to be called" do
      weighing_machine = WeighingMachine.new(3, true)
      weighing_machine.weigh.should eq("0.0")
    end
  end

  describe "precision" do
    it "should return the precision of the weighing machine" do
      weighing_machine = WeighingMachine.new(3, true)
      weighing_machine.precision.should eq(3)
    end

    it "should return the precision of the weighing machine when precsion is 5" do
      weighing_machine = WeighingMachine.new(5, true)
      weighing_machine.precision.should eq(5)
    end

    it "should not allow modification" do
      {% if WeighingMachine.has_method? "precision=" %}
        raise "Error: precision should not have a setter"
      {% end %}
    end
  end

  describe "weight" do
    it "should return the weight of the weighing machine" do
      weighing_machine = WeighingMachine.new(3, true)
      weighing_machine.weight.should eq(0.0)
    end

    it "should return the weight of the weighing machine when weight is 5.0" do
      weighing_machine = WeighingMachine.new(3, true)
      weighing_machine.weight = 5.0
      weighing_machine.weight.should eq(5.0)
    end

    it "should work to call weigh method" do
      weighing_machine = WeighingMachine.new(3, true)
      weighing_machine.weight = 5.0
      weighing_machine.weigh.should eq("5.0")
    end
  end

  describe "metric" do
    it "should be able to change to imperial" do
      weighing_machine = WeighingMachine.new(3, true)
      weighing_machine.metric = false
      weighing_machine.@metric.should eq(false)
    end

    it "should allow the initial to be imperial and then change to metric" do
      weighing_machine = WeighingMachine.new(3, false)
      weighing_machine.metric = true
      weighing_machine.@metric.should eq(true)
    end

    it "should affect the weigh method" do
      weighing_machine = WeighingMachine.new(3, true)
      weighing_machine.weight = 5.0
      weighing_machine.metric = false
      weighing_machine.weigh.should eq("11.023")
    end

    it "should not allow getting" do
      {% if WeighingMachine.has_method? "metric" %}
        raise "Error: metric should not have a getter"
      {% end %}
    end
  end
end
