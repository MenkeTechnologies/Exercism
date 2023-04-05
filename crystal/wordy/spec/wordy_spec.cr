require "spec"
require "../src/*"

describe "Wordy" do
  it "just a number" do
    Wordy.answer("What is 5?").should eq(5)
  end

  it "addition" do
    Wordy.answer("What is 1 plus 1?").should eq(2)
  end

  it "more addition" do
    Wordy.answer("What is 53 plus 2?").should eq(55)
  end

  it "addition with negative numbers" do
    Wordy.answer("What is -1 plus -10?").should eq(-11)
  end

  it "large addition" do
    Wordy.answer("What is 123 plus 45678?").should eq(45801)
  end

  it "subtraction" do
    Wordy.answer("What is 4 minus -12?").should eq(16)
  end

  it "multiplication" do
    Wordy.answer("What is -3 multiplied by 25?").should eq(-75)
  end

  it "division" do
    Wordy.answer("What is 33 divided by -3?").should eq(-11)
  end

  it "multiple additions" do
    Wordy.answer("What is 1 plus 1 plus 1?").should eq(3)
  end

  it "addition and subtraction" do
    Wordy.answer("What is 1 plus 5 minus -2?").should eq(8)
  end

  it "multiple subtraction" do
    Wordy.answer("What is 20 minus 4 minus 13?").should eq(3)
  end

  it "subtraction then addition" do
    Wordy.answer("What is 17 minus 6 plus 3?").should eq(14)
  end

  it "multiple multiplication" do
    Wordy.answer("What is 2 multiplied by -2 multiplied by 3?").should eq(-12)
  end

  it "addition and multiplication" do
    Wordy.answer("What is -3 plus 7 multiplied by -2?").should eq(-8)
  end

  it "multiple division" do
    Wordy.answer("What is -12 divided by 2 divided by -3?").should eq(2)
  end

  it "unknown operation" do
    expect_raises(ArgumentError) do
      Wordy.answer("What is 52 cubed?")
    end
  end

  it "Non math question" do
    expect_raises(ArgumentError) do
      Wordy.answer("Who is the President of the United States?")
    end
  end

  it "reject problem missing an operand" do
    expect_raises(ArgumentError) do
      Wordy.answer("What is 1 plus?")
    end
  end

  it "reject problem with no operands or operators" do
    expect_raises(ArgumentError) do
      Wordy.answer("What is?")
    end
  end

  it "reject two operations in a row" do
    expect_raises(ArgumentError) do
      Wordy.answer("What is 1 plus plus 2?")
    end
  end

  it "reject two numbers in a row" do
    expect_raises(ArgumentError) do
      Wordy.answer("What is 1 plus 2 1?")
    end
  end

  it "reject postfix notation" do
    expect_raises(ArgumentError) do
      Wordy.answer("What is 1 2 plus?")
    end
  end

  it "reject prefix notation" do
    expect_raises(ArgumentError) do
      Wordy.answer("What is plus 1 2?")
    end
  end
end
