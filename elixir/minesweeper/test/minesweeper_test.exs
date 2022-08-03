defmodule MinesweeperTest do
  use ExUnit.Case

  # 
  test "no rows" do
    input = []
    expected = []

    assert Minesweeper.annotate(input) == expected
  end

  test "no columns" do
    input = [""]
    expected = [""]

    assert Minesweeper.annotate(input) == expected
  end

  test "no mines" do
    input = [
      "   ",
      "   ",
      "   "
    ]

    expected = [
      "   ",
      "   ",
      "   "
    ]

    assert Minesweeper.annotate(input) == expected
  end

  test "mines only" do
    input = [
      "***",
      "***",
      "***"
    ]

    expected = [
      "***",
      "***",
      "***"
    ]

    assert Minesweeper.annotate(input) == expected
  end

  test "mine surrounded by spaces" do
    input = [
      "   ",
      " * ",
      "   "
    ]

    expected = [
      "111",
      "1*1",
      "111"
    ]

    assert Minesweeper.annotate(input) == expected
  end

  test "space surrounded by mines" do
    input = [
      "***",
      "* *",
      "***"
    ]

    expected = [
      "***",
      "*8*",
      "***"
    ]

    assert Minesweeper.annotate(input) == expected
  end

  test "horizontal line" do
    input = [
      " * * "
    ]

    expected = [
      "1*2*1"
    ]

    assert Minesweeper.annotate(input) == expected
  end

  test "horizontal line, mines at edges" do
    input = [
      "*   *"
    ]

    expected = [
      "*1 1*"
    ]

    assert Minesweeper.annotate(input) == expected
  end

  test "vertical line" do
    input = [
      " ",
      "*",
      " ",
      "*",
      " "
    ]

    expected = [
      "1",
      "*",
      "2",
      "*",
      "1"
    ]

    assert Minesweeper.annotate(input) == expected
  end

  test "vertical line, mines at edges" do
    input = [
      "*",
      " ",
      " ",
      " ",
      "*"
    ]

    expected = [
      "*",
      "1",
      " ",
      "1",
      "*"
    ]

    assert Minesweeper.annotate(input) == expected
  end

  test "cross" do
    input = [
      "  *  ",
      "  *  ",
      "*****",
      "  *  ",
      "  *  "
    ]

    expected = [
      " 2*2 ",
      "25*52",
      "*****",
      "25*52",
      " 2*2 "
    ]

    assert Minesweeper.annotate(input) == expected
  end

  test "large minefield" do
    input = [
      " *  * ",
      "  *   ",
      "    * ",
      "   * *",
      " *  * ",
      "      "
    ]

    expected = [
      "1*22*1",
      "12*322",
      " 123*2",
      "112*4*",
      "1*22*2",
      "111111"
    ]

    assert Minesweeper.annotate(input) == expected
  end
end
