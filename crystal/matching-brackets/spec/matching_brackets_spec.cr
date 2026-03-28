require "spec"
require "../src/*"

describe "MatchingBrackets" do
  it "paired square brackets" do
    MatchingBrackets.valid?("[]").should be_true
  end

  pending "empty string" do
    MatchingBrackets.valid?("").should be_true
  end

  pending "unpaired brackets" do
    MatchingBrackets.valid?("[[").should be_false
  end

  pending "wrong ordered brackets" do
    MatchingBrackets.valid?("}{").should be_false
  end

  pending "wrong closing bracket" do
    MatchingBrackets.valid?("{]").should be_false
  end

  pending "paired with whitespace" do
    MatchingBrackets.valid?("{ }").should be_true
  end

  pending "partially paired brackets" do
    MatchingBrackets.valid?("{[])").should be_false
  end

  pending "simple nested brackets" do
    MatchingBrackets.valid?("{[]}").should be_true
  end

  pending "several paired brackets" do
    MatchingBrackets.valid?("{}[]").should be_true
  end

  pending "paired and nested brackets" do
    MatchingBrackets.valid?("([{}({}[])])").should be_true
  end

  pending "unopened closing brackets" do
    MatchingBrackets.valid?("{[)][]}").should be_false
  end

  pending "unpaired and nested brackets" do
    MatchingBrackets.valid?("([{])").should be_false
  end

  pending "paired and wrong nested brackets" do
    MatchingBrackets.valid?("[({]})").should be_false
  end

  pending "paired and wrong nested brackets but innermost are correct" do
    MatchingBrackets.valid?("[({}])").should be_false
  end

  pending "paired and incomplete brackets" do
    MatchingBrackets.valid?("{}[").should be_false
  end

  pending "too many closing brackets" do
    MatchingBrackets.valid?("[]]").should be_false
  end

  pending "early unexpected brackets" do
    MatchingBrackets.valid?(")()").should be_false
  end

  pending "early mismatched brackets" do
    MatchingBrackets.valid?("{)()").should be_false
  end

  pending "math expression" do
    MatchingBrackets.valid?("(((185 + 223.85) * 15) - 543)/2").should be_true
  end

  pending "complex latex expression" do
    MatchingBrackets.valid?("left(\begin{array}{cc} \frac{1}{3} & x\\ mathrm{e}^{x} &... x^2 \end{array}\right)").should be_true
  end
end
