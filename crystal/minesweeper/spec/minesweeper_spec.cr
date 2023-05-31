require "spec"
require "../src/*"

describe "Minesweeper" do
  it "no rows" do
    minesweeper = Minesweeper.new([] of String)
    minesweeper.annotate.should eq([] of String)
  end

  pending "no columns" do
    minesweeper = Minesweeper.new([""] of String)
    minesweeper.annotate.should eq([""])
  end

  pending "no mines" do
    minesweeper = Minesweeper.new(["   ", "   ", "   "] of String)
    minesweeper.annotate.should eq(["   ", "   ", "   "])
  end

  pending "minefield with only mines" do
    minesweeper = Minesweeper.new(["***", "***", "***"] of String)
    minesweeper.annotate.should eq(["***", "***", "***"])
  end

  pending "mine surrounded by spaces" do
    minesweeper = Minesweeper.new(["   ", " * ", "   "] of String)
    minesweeper.annotate.should eq(["111", "1*1", "111"])
  end

  pending "space surrounded by mines" do
    minesweeper = Minesweeper.new(["***", "* *", "***"] of String)
    minesweeper.annotate.should eq(["***", "*8*", "***"])
  end

  pending "horizontal line" do
    minesweeper = Minesweeper.new([" * * "] of String)
    minesweeper.annotate.should eq(["1*2*1"])
  end

  pending "horizontal line, mines at edges" do
    minesweeper = Minesweeper.new(["*   *"] of String)
    minesweeper.annotate.should eq(["*1 1*"])
  end

  pending "vertical line" do
    minesweeper = Minesweeper.new([" ", "*", " ", "*", " "] of String)
    minesweeper.annotate.should eq(["1", "*", "2", "*", "1"])
  end

  pending "vertical line, mines at edges" do
    minesweeper = Minesweeper.new(["*", " ", " ", " ", "*"] of String)
    minesweeper.annotate.should eq(["*", "1", " ", "1", "*"])
  end

  pending "cross" do
    minesweeper = Minesweeper.new(["  *  ", "  *  ", "*****", "  *  ", "  *  "] of String)
    minesweeper.annotate.should eq([" 2*2 ", "25*52", "*****", "25*52", " 2*2 "])
  end

  pending "large minefield" do
    minesweeper = Minesweeper.new([" *  * ", "  *   ", "    * ", "   * *", " *  * ", "      "] of String)
    minesweeper.annotate.should eq(["1*22*1", "12*322", " 123*2", "112*4*", "1*22*2", "111111"])
  end
end
