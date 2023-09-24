require "spec"
require "../src/*"

describe "Rectangles" do
  it "no rows" do
    input = [] of String
    Rectangles.rectangles(input).should eq(0)
  end

  it "no columns" do
    input = [
      "",
    ]
    Rectangles.rectangles(input).should eq(0)
  end

  it "no rectangles" do
    input = [
      " ",
    ]
    Rectangles.rectangles(input).should eq(0)
  end

  it "one rectangle" do
    input = [
      "+-+",
      "| |",
      "+-+",
    ]
    Rectangles.rectangles(input).should eq(1)
  end

  it "two rectangles without shared parts" do
    input = [
      "  +-+",
      "  | |",
      "+-+-+",
      "| |  ",
      "+-+  ",
    ]
    Rectangles.rectangles(input).should eq(2)
  end

  it "five rectangles with shared parts" do
    input = [
      "  +-+",
      "  | |",
      "+-+-+",
      "| | |",
      "+-+-+",
    ]
    Rectangles.rectangles(input).should eq(5)
  end

  it "rectangle of height 1 is counted" do
    input = [
      "+--+",
      "+--+",
    ]
    Rectangles.rectangles(input).should eq(1)
  end

  it "rectangle of width 1 is counted" do
    input = [
      "++",
      "||",
      "++",
    ]
    Rectangles.rectangles(input).should eq(1)
  end

  it "1x1 square is counted" do
    input = [
      "++",
      "++",
    ]
    Rectangles.rectangles(input).should eq(1)
  end

  it "only complete rectangles are counted" do
    input = [
      "  +-+",
      "    |",
      "+-+-+",
      "| | -",
      "+-+-+",
    ]
    Rectangles.rectangles(input).should eq(1)
  end

  it "rectangles can be of different sizes" do
    input = [
      "+------+----+",
      "|      |    |",
      "+---+--+    |",
      "|   |       |",
      "+---+-------+",
    ]
    Rectangles.rectangles(input).should eq(3)
  end

  it "corner is required for a rectangle to be complete" do
    input = [
      "+------+----+",
      "|      |    |",
      "+------+    |",
      "|   |       |",
      "+---+-------+",
    ]
    Rectangles.rectangles(input).should eq(2)
  end

  it "large input with many rectangles" do
    input = [
      "+---+--+----+",
      "|   +--+----+",
      "+---+--+    |",
      "|   +--+----+",
      "+---+--+--+-+",
      "+---+--+--+-+",
      "+------+  | |",
      "          +-+",
    ]
    Rectangles.rectangles(input).should eq(60)
  end

  it "rectangles must have four sides" do
    input = [
      "+-+ +-+",
      "| | | |",
      "+-+-+-+",
      "  | |  ",
      "+-+-+-+",
      "| | | |",
      "+-+ +-+",
    ]
    Rectangles.rectangles(input).should eq(5)
  end
end
