require "spec"
require "../src/*"

describe "Knapsack" do
  it "no items" do
    maximum_value = Knapsack.maximum_value(100, [] of NamedTuple(weight: Int32, value: Int32))
    maximum_value.should eq(0)
  end

  it "one item, too heavy" do
    maximum_value = Knapsack.maximum_value(10, [
      {weight: 100, value: 1},
    ])
    maximum_value.should eq(0)
  end

  it "five items (cannot be greedy by weight)" do
    maximum_value = Knapsack.maximum_value(10, [
      {weight: 2, value: 5},
      {weight: 2, value: 5},
      {weight: 2, value: 5},
      {weight: 2, value: 5},
      {weight: 10, value: 21},
    ])
    maximum_value.should eq(21)
  end

  it "five items (cannot be greedy by value)" do
    maximum_value = Knapsack.maximum_value(10, [
      {weight: 2, value: 20},
      {weight: 2, value: 20},
      {weight: 2, value: 20},
      {weight: 2, value: 20},
      {weight: 10, value: 50},
    ])
    maximum_value.should eq(80)
  end

  it "example knapsack" do
    maximum_value = Knapsack.maximum_value(10, [
      {weight: 5, value: 10},
      {weight: 4, value: 40},
      {weight: 6, value: 30},
      {weight: 4, value: 50},
    ])
    maximum_value.should eq(90)
  end

  it "8 items" do
    maximum_value = Knapsack.maximum_value(104, [
      {weight: 25, value: 350},
      {weight: 35, value: 400},
      {weight: 45, value: 450},
      {weight: 5, value: 20},
      {weight: 25, value: 70},
      {weight: 3, value: 8},
      {weight: 2, value: 5},
      {weight: 2, value: 5},
    ])
    maximum_value.should eq(900)
  end

  it "15 items" do
    maximum_value = Knapsack.maximum_value(750, [
      {weight: 70, value: 135},
      {weight: 73, value: 139},
      {weight: 77, value: 149},
      {weight: 80, value: 150},
      {weight: 82, value: 156},
      {weight: 87, value: 163},
      {weight: 90, value: 173},
      {weight: 94, value: 184},
      {weight: 98, value: 192},
      {weight: 106, value: 201},
      {weight: 110, value: 210},
      {weight: 113, value: 214},
      {weight: 115, value: 221},
      {weight: 118, value: 229},
      {weight: 120, value: 240},
    ])
    maximum_value.should eq(1458)
  end
end
