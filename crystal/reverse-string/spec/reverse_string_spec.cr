require "spec"
require "../src/*"

describe "ReverseString" do
  it "an empty string" do
    ReverseString.reverse("").should eq("")
  end

  pending "a word" do
    ReverseString.reverse("robot").should eq("tobor")
  end

  pending "a capitalized word" do
    ReverseString.reverse("Ramen").should eq("nemaR")
  end

  pending "a sentence with punctuation" do
    ReverseString.reverse("I'm hungry!").should eq("!yrgnuh m'I")
  end

  pending "a palindrome" do
    ReverseString.reverse("racecar").should eq("racecar")
  end

  pending "an even-sized word" do
    ReverseString.reverse("drawer").should eq("reward")
  end
end
