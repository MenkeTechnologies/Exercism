require "spec"
require "../src/*"

describe "ResistorColorExpert" do
  it "Orange, orange, black, and red" do
    ResistorColorExpert.resistor_label(["orange", "orange", "black", "red"]).should eq("33 ohms ±2%")
  end

  it "Blue, grey, brown, and violet" do
    ResistorColorExpert.resistor_label(["blue", "grey", "brown", "violet"]).should eq("680 ohms ±0.1%")
  end

  it "Red, black, red, and green" do
    ResistorColorExpert.resistor_label(["red", "black", "red", "green"]).should eq("2 kiloohms ±0.5%")
  end

  it "Green, brown, orange, and grey" do
    ResistorColorExpert.resistor_label(["green", "brown", "orange", "grey"]).should eq("51 kiloohms ±0.05%")
  end

  it "One black band" do
    ResistorColorExpert.resistor_label(["black"]).should eq("0 ohms")
  end

  it "Orange, orange, yellow, black, and brown" do
    ResistorColorExpert.resistor_label(["orange", "orange", "yellow", "black", "brown"]).should eq("334 ohms ±1%")
  end

  it "Red, green, yellow, yellow, and brown" do
    ResistorColorExpert.resistor_label(["red", "green", "yellow", "yellow", "brown"]).should eq("2.54 megaohms ±1%")
  end

  it "Blue, grey, white, brown, and brown" do
    ResistorColorExpert.resistor_label(["blue", "grey", "white", "brown", "brown"]).should eq("6.89 kiloohms ±1%")
  end

  it "Violet, orange, red, and grey" do
    ResistorColorExpert.resistor_label(["violet", "orange", "red", "grey"]).should eq("7.3 kiloohms ±0.05%")
  end

  it "Brown, red, orange, green, and blue" do
    ResistorColorExpert.resistor_label(["brown", "red", "orange", "green", "blue"]).should eq("12.3 megaohms ±0.25%")
  end
end
