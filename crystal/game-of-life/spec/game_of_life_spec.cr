require "spec"
require "../src/*"

describe "GameOfLife" do
  it "empty matrix" do
    matrix = Array(Array(Int32)).new
    expected = Array(Array(Int32)).new
    GameOfLife.tick(matrix).should eq(expected)
  end

  pending "live cells with zero live neighbors die" do
    matrix = [[0, 0, 0], [0, 1, 0], [0, 0, 0]]
    expected = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
    GameOfLife.tick(matrix).should eq(expected)
  end

  pending "live cells with only one live neighbor die" do
    matrix = [[0, 0, 0], [0, 1, 0], [0, 1, 0]]
    expected = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
    GameOfLife.tick(matrix).should eq(expected)
  end

  pending "live cells with two live neighbors stay alive" do
    matrix = [[1, 0, 1], [1, 0, 1], [1, 0, 1]]
    expected = [[0, 0, 0], [1, 0, 1], [0, 0, 0]]
    GameOfLife.tick(matrix).should eq(expected)
  end

  pending "live cells with three live neighbors stay alive" do
    matrix = [[0, 1, 0], [1, 0, 0], [1, 1, 0]]
    expected = [[0, 0, 0], [1, 0, 0], [1, 1, 0]]
    GameOfLife.tick(matrix).should eq(expected)
  end

  pending "dead cells with three live neighbors become alive" do
    matrix = [[1, 1, 0], [0, 0, 0], [1, 0, 0]]
    expected = [[0, 0, 0], [1, 1, 0], [0, 0, 0]]
    GameOfLife.tick(matrix).should eq(expected)
  end

  pending "live cells with four or more neighbors die" do
    matrix = [[1, 1, 1], [1, 1, 1], [1, 1, 1]]
    expected = [[1, 0, 1], [0, 0, 0], [1, 0, 1]]
    GameOfLife.tick(matrix).should eq(expected)
  end

  pending "bigger matrix" do
    matrix = [
      [1, 1, 0, 1, 1, 0, 0, 0], [1, 0, 1, 1, 0, 0, 0, 0], [1, 1, 1, 0, 0, 1, 1, 1], [0, 0, 0, 0, 0, 1, 1, 0],
      [1, 0, 0, 0, 1, 1, 0, 0], [1, 1, 0, 0, 0, 1, 1, 1], [0, 0, 1, 0, 1, 0, 0, 1], [1, 0, 0, 0, 0, 0, 1, 1],
    ]
    expected = [
      [1, 1, 0, 1, 1, 0, 0, 0], [0, 0, 0, 0, 0, 1, 1, 0], [1, 0, 1, 1, 1, 1, 0, 1], [1, 0, 0, 0, 0, 0, 0, 1],
      [1, 1, 0, 0, 1, 0, 0, 1], [1, 1, 0, 1, 0, 0, 0, 1], [1, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 1, 1],
    ]
    GameOfLife.tick(matrix).should eq(expected)
  end
end
