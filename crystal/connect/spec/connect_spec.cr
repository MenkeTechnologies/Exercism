require "spec"
require "../src/*"

describe "Connect" do
  it "an empty board has no winner" do
    board = [
      ". . . . .",
      " . . . . .",
      "  . . . . .",
      "   . . . . .",
      "    . . . . .",
    ]
    Connect.winner(board).should eq ""
  end

  it "X can win on a 1x1 board" do
    board = [
      "X",
    ]
    Connect.winner(board).should eq "X"
  end

  it "O can win on a 1x1 board" do
    board = [
      "O",
    ]
    Connect.winner(board).should eq "O"
  end

  it "only edges does not make a winner" do
    board = [
      "O O O X",
      " X . . X",
      "  X . . X",
      "   X O O O",
    ]
    Connect.winner(board).should eq ""
  end

  it "illegal diagonal does not make a winner" do
    board = [
      "X O . .",
      " O X X X",
      "  O X O .",
      "   . O X .",
      "    X X O O",
    ]
    Connect.winner(board).should eq ""
  end

  it "nobody wins crossing adjacent angles" do
    board = [
      "X . . .",
      " . X O .",
      "  O . X O",
      "   . O . X",
      "    . . O .",
    ]
    Connect.winner(board).should eq ""
  end

  it "X wins crossing from left to right" do
    board = [
      ". O . .",
      " O X X X",
      "  O X O .",
      "   X X O X",
      "    . O X .",
    ]
    Connect.winner(board).should eq "X"
  end

  it "O wins crossing from top to bottom" do
    board = [
      ". O . .",
      " O X X X",
      "  O O O .",
      "   X X O X",
      "    . O X .",
    ]
    Connect.winner(board).should eq "O"
  end

  it "X wins using a convoluted path" do
    board = [
      ". X X . .",
      " X . X . X",
      "  . X . X .",
      "   . X X . .",
      "    O O O O O",
    ]
    Connect.winner(board).should eq "X"
  end

  it "X wins using a spiral path" do
    board = [
      "O X X X X X X X X",
      " O X O O O O O O O",
      "  O X O X X X X X O",
      "   O X O X O O O X O",
      "    O X O X X X O X O",
      "     O X O O O X O X O",
      "      O X X X X X O X O",
      "       O O O O O O O X O",
      "        X X X X X X X X O",
    ]
    Connect.winner(board).should eq "X"
  end
end
