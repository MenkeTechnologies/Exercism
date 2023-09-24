require "spec"
require "../src/*"

describe "Yacht" do
  it "Yacht" do
    dice = [5, 5, 5, 5, 5]
    category = Yacht::Category::Yacht
    Yacht.score(dice, category).should eq(50)
  end

  it "Not Yacht" do
    dice = [1, 3, 3, 2, 5]
    category = Yacht::Category::Yacht
    Yacht.score(dice, category).should eq(0)
  end

  it "Ones" do
    dice = [1, 1, 1, 3, 5]
    category = Yacht::Category::Ones
    Yacht.score(dice, category).should eq(3)
  end

  it "Ones, out of order" do
    dice = [3, 1, 1, 5, 1]
    category = Yacht::Category::Ones
    Yacht.score(dice, category).should eq(3)
  end

  it "No ones" do
    dice = [4, 3, 6, 5, 5]
    category = Yacht::Category::Ones
    Yacht.score(dice, category).should eq(0)
  end

  it "Twos" do
    dice = [2, 3, 4, 5, 6]
    category = Yacht::Category::Twos
    Yacht.score(dice, category).should eq(2)
  end

  it "Fours" do
    dice = [1, 4, 1, 4, 1]
    category = Yacht::Category::Fours
    Yacht.score(dice, category).should eq(8)
  end

  it "Yacht counted as threes" do
    dice = [3, 3, 3, 3, 3]
    category = Yacht::Category::Threes
    Yacht.score(dice, category).should eq(15)
  end

  it "Fives" do
    dice = [1, 5, 3, 5, 3]
    category = Yacht::Category::Fives
    Yacht.score(dice, category).should eq(10)
  end

  it "Sixes" do
    dice = [2, 3, 4, 5, 6]
    category = Yacht::Category::Sixes
    Yacht.score(dice, category).should eq(6)
  end

  it "Full house two small, three big" do
    dice = [2, 2, 4, 4, 4]
    category = Yacht::Category::FullHouse
    Yacht.score(dice, category).should eq(16)
  end

  it "Full house three small, two big" do
    dice = [5, 3, 3, 5, 3]
    category = Yacht::Category::FullHouse
    Yacht.score(dice, category).should eq(19)
  end

  it "Four of a kind is not a full house" do
    dice = [1, 4, 4, 4, 4]
    category = Yacht::Category::FullHouse
    Yacht.score(dice, category).should eq(0)
  end

  it "Yacht is not a full house" do
    dice = [2, 2, 2, 2, 2]
    category = Yacht::Category::FullHouse
    Yacht.score(dice, category).should eq(0)
  end

  it "Four of a Kind" do
    dice = [6, 6, 4, 6, 6]
    category = Yacht::Category::FourOfAKind
    Yacht.score(dice, category).should eq(24)
  end

  it "Yacht can be scored as Four of a Kind" do
    dice = [3, 3, 3, 3, 3]
    category = Yacht::Category::FourOfAKind
    Yacht.score(dice, category).should eq(12)
  end

  it "Full house is not Four of a Kind" do
    dice = [3, 3, 3, 5, 5]
    category = Yacht::Category::FourOfAKind
    Yacht.score(dice, category).should eq(0)
  end

  it "Little Straight" do
    dice = [3, 5, 4, 1, 2]
    category = Yacht::Category::LittleStraight
    Yacht.score(dice, category).should eq(30)
  end

  it "Little Straight as Big Straight" do
    dice = [1, 2, 3, 4, 5]
    category = Yacht::Category::BigStraight
    Yacht.score(dice, category).should eq(0)
  end

  it "Four in order but not a little straight" do
    dice = [1, 1, 2, 3, 4]
    category = Yacht::Category::LittleStraight
    Yacht.score(dice, category).should eq(0)
  end

  it "No pairs but not a little straight" do
    dice = [1, 2, 3, 4, 6]
    category = Yacht::Category::LittleStraight
    Yacht.score(dice, category).should eq(0)
  end

  it "Minimum is 1, maximum is 5, but not a little straight" do
    dice = [1, 1, 3, 4, 5]
    category = Yacht::Category::LittleStraight
    Yacht.score(dice, category).should eq(0)
  end

  it "Big Straight" do
    dice = [4, 6, 2, 5, 3]
    category = Yacht::Category::BigStraight
    Yacht.score(dice, category).should eq(30)
  end

  it "Big Straight as little straight" do
    dice = [6, 5, 4, 3, 2]
    category = Yacht::Category::LittleStraight
    Yacht.score(dice, category).should eq(0)
  end

  it "No pairs but not a big straight" do
    dice = [6, 5, 4, 3, 1]
    category = Yacht::Category::BigStraight
    Yacht.score(dice, category).should eq(0)
  end

  it "Choice" do
    dice = [3, 3, 5, 6, 6]
    category = Yacht::Category::Choice
    Yacht.score(dice, category).should eq(23)
  end

  it "Yacht as choice" do
    dice = [2, 2, 2, 2, 2]
    category = Yacht::Category::Choice
    Yacht.score(dice, category).should eq(10)
  end
end
