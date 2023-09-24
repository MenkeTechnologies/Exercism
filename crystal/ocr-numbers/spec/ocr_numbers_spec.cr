require "spec"
require "../src/*"

describe "OcrNumbers" do
  it "Recognizes 0" do
    input = [
      " _ ",
      "| |",
      "|_|",
      "   ",
    ]

    OcrNumbers.convert(input).should eq("0")
  end

  it "Recognizes 1" do
    input = [
      "   ",
      "  |",
      "  |",
      "   ",
    ]

    OcrNumbers.convert(input).should eq("1")
  end

  it "Unreadable but correctly sized inputs return ?" do
    input = [
      "   ",
      "  _",
      "  |",
      "   ",
    ]

    OcrNumbers.convert(input).should eq("?")
  end

  it "Input with a number of lines that is not a multiple of four raises an error" do
    input = [
      " _ ",
      "| |",
      "   ",
    ]

    expect_raises(ArgumentError) do
      OcrNumbers.convert(input)
    end
  end

  it "Input with a number of columns that is not a multiple of three raises an error" do
    input = [
      "    ",
      "   |",
      "   |",
      "    ",
    ]

    expect_raises(ArgumentError) do
      OcrNumbers.convert(input)
    end
  end

  it "Recognizes 110101100" do
    input = [
      "       _     _        _  _ ",
      "  |  || |  || |  |  || || |",
      "  |  ||_|  ||_|  |  ||_||_|",
      "                           ",
    ]

    OcrNumbers.convert(input).should eq("110101100")
  end

  it "Garbled numbers in a string are replaced with ?" do
    input = [
      "       _     _           _ ",
      "  |  || |  || |     || || |",
      "  |  | _|  ||_|  |  ||_||_|",
      "                           ",
    ]

    OcrNumbers.convert(input).should eq("11?10?1?0")
  end

  it "Recognizes 2" do
    input = [
      " _ ",
      " _|",
      "|_ ",
      "   ",
    ]

    OcrNumbers.convert(input).should eq("2")
  end

  it "Recognizes 3" do
    input = [
      " _ ",
      " _|",
      " _|",
      "   ",
    ]

    OcrNumbers.convert(input).should eq("3")
  end

  it "Recognizes 4" do
    input = [
      "   ",
      "|_|",
      "  |",
      "   ",
    ]

    OcrNumbers.convert(input).should eq("4")
  end

  it "Recognizes 5" do
    input = [
      " _ ",
      "|_ ",
      " _|",
      "   ",
    ]

    OcrNumbers.convert(input).should eq("5")
  end

  it "Recognizes 6" do
    input = [
      " _ ",
      "|_ ",
      "|_|",
      "   ",
    ]

    OcrNumbers.convert(input).should eq("6")
  end

  it "Recognizes 7" do
    input = [
      " _ ",
      "  |",
      "  |",
      "   ",
    ]

    OcrNumbers.convert(input).should eq("7")
  end

  it "Recognizes 8" do
    input = [
      " _ ",
      "|_|",
      "|_|",
      "   ",
    ]

    OcrNumbers.convert(input).should eq("8")
  end

  it "Recognizes 9" do
    input = [
      " _ ",
      "|_|",
      " _|",
      "   ",
    ]

    OcrNumbers.convert(input).should eq("9")
  end

  it "Recognizes string of decimal numbers" do
    input = [
      "    _  _     _  _  _  _  _  _ ",
      "  | _| _||_||_ |_   ||_||_|| |",
      "  ||_  _|  | _||_|  ||_| _||_|",
      "                              ",
    ]

    OcrNumbers.convert(input).should eq("1234567890")
  end

  it "Numbers separated by empty lines are recognized. Lines are joined by commas." do
    input = [
      "    _  _ ",
      "  | _| _|",
      "  ||_  _|",
      "         ",
      "    _  _ ",
      "|_||_ |_ ",
      "  | _||_|",
      "         ",
      " _  _  _ ",
      "  ||_||_|",
      "  ||_| _|",
      "         ",
    ]

    OcrNumbers.convert(input).should eq("123,456,789")
  end
end
