require "spec"
require "../src/*"

describe "BookStore" do
  it "Only a single book" do
    total = BookStore.total([1])
    total.should eq(800)
  end

  it "Two of the same book" do
    total = BookStore.total([2, 2])
    total.should eq(1600)
  end

  it "Empty basket" do
    total = BookStore.total([] of Int32)
    total.should eq(0)
  end

  it "Two different books" do
    total = BookStore.total([1, 2])
    total.should eq(1520)
  end

  it "Three different books" do
    total = BookStore.total([1, 2, 3])
    total.should eq(2160)
  end

  it "Four different books" do
    total = BookStore.total([1, 2, 3, 4])
    total.should eq(2560)
  end

  it "Five different books" do
    total = BookStore.total([1, 2, 3, 4, 5])
    total.should eq(3000)
  end

  it "Two groups of four is cheaper than group of five plus group of three" do
    total = BookStore.total([1, 1, 2, 2, 3, 3, 4, 5])
    total.should eq(5120)
  end

  it "Two groups of four is cheaper than groups of five and three" do
    total = BookStore.total([1, 1, 2, 3, 4, 4, 5, 5])
    total.should eq(5120)
  end

  it "Group of four plus group of two is cheaper than two groups of three" do
    total = BookStore.total([1, 1, 2, 2, 3, 4])
    total.should eq(4080)
  end

  it "Two each of first four books and one copy each of rest" do
    total = BookStore.total([1, 1, 2, 2, 3, 3, 4, 4, 5])
    total.should eq(5560)
  end

  it "Two copies of each book" do
    total = BookStore.total([1, 1, 2, 2, 3, 3, 4, 4, 5, 5])
    total.should eq(6000)
  end

  it "Three copies of first book and two each of remaining" do
    total = BookStore.total([1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 1])
    total.should eq(6800)
  end

  it "Three each of first two books and two each of remaining books" do
    total = BookStore.total([1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 1, 2])
    total.should eq(7520)
  end

  it "Four groups of four are cheaper than two groups each of five and three" do
    total = BookStore.total([1, 1, 2, 2, 3, 3, 4, 5, 1, 1, 2, 2, 3, 3, 4, 5])
    total.should eq(10240)
  end

  it "Check that groups of four are created properly even when there are more groups of three than groups of five" do
    total = BookStore.total([1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 4, 4, 5, 5])
    total.should eq(14560)
  end

  it "One group of one and four is cheaper than one group of two and three" do
    total = BookStore.total([1, 1, 2, 3, 4])
    total.should eq(3360)
  end

  it "One group of one and two plus three groups of four is cheaper than one group of each size" do
    total = BookStore.total([1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5])
    total.should eq(10000)
  end
end
