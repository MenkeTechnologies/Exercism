require "spec"
require "../src/*"

describe "Say" do
  it "zero" do
    Say.number(0).should eq("zero")
  end

  it "one" do
    Say.number(1).should eq("one")
  end

  it "fourteen" do
    Say.number(14).should eq("fourteen")
  end

  it "twenty" do
    Say.number(20).should eq("twenty")
  end

  it "twenty-two" do
    Say.number(22).should eq("twenty-two")
  end

  it "thirty" do
    Say.number(30).should eq("thirty")
  end

  it "ninety-nine" do
    Say.number(99).should eq("ninety-nine")
  end

  it "one hundred" do
    Say.number(100).should eq("one hundred")
  end

  it "one hundred twenty-three" do
    Say.number(123).should eq("one hundred twenty-three")
  end

  it "two hundred" do
    Say.number(200).should eq("two hundred")
  end

  it "nine hundred ninety-nine" do
    Say.number(999).should eq("nine hundred ninety-nine")
  end

  it "one thousand" do
    Say.number(1000).should eq("one thousand")
  end

  it "one thousand two hundred thirty-four" do
    Say.number(1234).should eq("one thousand two hundred thirty-four")
  end

  it "one million" do
    Say.number(1000000).should eq("one million")
  end

  it "one million two thousand three hundred forty-five" do
    Say.number(1002345).should eq("one million two thousand three hundred forty-five")
  end

  it "one billion" do
    Say.number(1000000000).should eq("one billion")
  end

  it "a big number" do
    Say.number(987654321123).should eq("nine hundred eighty-seven billion six hundred fifty-four million three hundred twenty-one thousand one hundred twenty-three")
  end

  it "numbers below zero are out of range" do
    expect_raises(ArgumentError) do
      Say.number(-1)
    end
  end

  it "numbers above 999,999,999,999 are out of range" do
    expect_raises(ArgumentError) do
      Say.number(1000000000000)
    end
  end
end
