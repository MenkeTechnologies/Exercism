require "spec"
require "../src/*"

describe "Dominoes" do
  it "empty input = empty output" do
    Dominoes.can_chain([] of Array(Int32)).should eq(true)
  end

  it "singleton input = singleton output" do
    Dominoes.can_chain([[1, 1]]).should eq(true)
  end

  it "singleton that can't be chained" do
    Dominoes.can_chain([[1, 2]]).should eq(false)
  end

  it "three elements" do
    Dominoes.can_chain([[1, 2], [3, 1], [2, 3]]).should eq(true)
  end

  it "can reverse dominoes" do
    Dominoes.can_chain([[1, 2], [1, 3], [2, 3]]).should eq(true)
  end

  it "can't be chained" do
    Dominoes.can_chain([[1, 2], [4, 1], [2, 3]]).should eq(false)
  end

  it "disconnected - simple" do
    Dominoes.can_chain([[1, 1], [2, 2]]).should eq(false)
  end

  it "disconnected - double loop" do
    Dominoes.can_chain([[1, 2], [2, 1], [3, 4], [4, 3]]).should eq(false)
  end

  it "disconnected - single isolated" do
    Dominoes.can_chain([[1, 2], [2, 3], [3, 1], [4, 4]]).should eq(false)
  end

  it "need backtrack" do
    Dominoes.can_chain([[1, 2], [2, 3], [3, 1], [2, 4], [2, 4]]).should eq(true)
  end

  it "separate loops" do
    Dominoes.can_chain([[1, 2], [2, 3], [3, 1], [1, 1], [2, 2], [3, 3]]).should eq(true)
  end

  it "nine elements" do
    Dominoes.can_chain([[1, 2], [5, 3], [3, 1], [1, 2], [2, 4], [1, 6], [2, 3], [3, 4], [5, 6]]).should eq(true)
  end

  it "separate three-domino loops" do
    Dominoes.can_chain([[1, 2], [2, 3], [3, 1], [4, 5], [5, 6], [6, 4]]).should eq(false)
  end
end
