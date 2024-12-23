require "spec"
require "../src/*"

describe "RationalNumbers" do
  describe "Arithmetic" do
    describe "Addition" do
      it "Add two positive rational numbers" do
        RationalNumbers.add({1, 2}, {2, 3}).should eq({7, 6})
      end

      it "Add a positive rational number and a negative rational number" do
        RationalNumbers.add({1, 2}, {-2, 3}).should eq({-1, 6})
      end

      it "Add two negative rational numbers" do
        RationalNumbers.add({-1, 2}, {-2, 3}).should eq({-7, 6})
      end

      it "Add a rational number to its additive inverse" do
        RationalNumbers.add({1, 2}, {-1, 2}).should eq({0, 1})
      end
    end

    describe "Subtraction" do
      it "Subtract two positive rational numbers" do
        RationalNumbers.sub({1, 2}, {2, 3}).should eq({-1, 6})
      end

      it "Subtract a positive rational number and a negative rational number" do
        RationalNumbers.sub({1, 2}, {-2, 3}).should eq({7, 6})
      end

      it "Subtract two negative rational numbers" do
        RationalNumbers.sub({-1, 2}, {-2, 3}).should eq({1, 6})
      end

      it "Subtract a rational number from itself" do
        RationalNumbers.sub({1, 2}, {1, 2}).should eq({0, 1})
      end
    end

    describe "Multiplication" do
      it "Multiply two positive rational numbers" do
        RationalNumbers.mul({1, 2}, {2, 3}).should eq({1, 3})
      end

      it "Multiply a negative rational number by a positive rational number" do
        RationalNumbers.mul({-1, 2}, {2, 3}).should eq({-1, 3})
      end

      it "Multiply two negative rational numbers" do
        RationalNumbers.mul({-1, 2}, {-2, 3}).should eq({1, 3})
      end

      it "Multiply a rational number by its reciprocal" do
        RationalNumbers.mul({1, 2}, {2, 1}).should eq({1, 1})
      end

      it "Multiply a rational number by 1" do
        RationalNumbers.mul({1, 2}, {1, 1}).should eq({1, 2})
      end

      it "Multiply a rational number by 0" do
        RationalNumbers.mul({1, 2}, {0, 1}).should eq({0, 1})
      end
    end

    describe "Division" do
      it "Divide two positive rational numbers" do
        RationalNumbers.div({1, 2}, {2, 3}).should eq({3, 4})
      end

      it "Divide a positive rational number by a negative rational number" do
        RationalNumbers.div({1, 2}, {-2, 3}).should eq({-3, 4})
      end

      it "Divide two negative rational numbers" do
        RationalNumbers.div({-1, 2}, {-2, 3}).should eq({3, 4})
      end

      it "Divide a rational number by 1" do
        RationalNumbers.div({1, 2}, {1, 1}).should eq({1, 2})
      end
    end
  end

  describe "Absolute value" do
    it "Absolute value of a positive rational number" do
      RationalNumbers.abs({1, 2}).should eq({1, 2})
    end

    it "Absolute value of a positive rational number with negative numerator and denominator" do
      RationalNumbers.abs({-1, -2}).should eq({1, 2})
    end

    it "Absolute value of a negative rational number" do
      RationalNumbers.abs({-1, 2}).should eq({1, 2})
    end

    it "Absolute value of a negative rational number with negative denominator" do
      RationalNumbers.abs({1, -2}).should eq({1, 2})
    end

    it "Absolute value of zero" do
      RationalNumbers.abs({0, 1}).should eq({0, 1})
    end

    it "Absolute value of a rational number is reduced to lowest terms" do
      RationalNumbers.abs({2, 4}).should eq({1, 2})
    end
  end

  describe "Exponentiation of a rational number" do
    it "Raise a positive rational number to a positive integer power" do
      RationalNumbers.exp({1, 2}, 3).should eq({1, 8})
    end

    it "Raise a negative rational number to a positive integer power" do
      RationalNumbers.exp({-1, 2}, 3).should eq({-1, 8})
    end

    it "Raise a positive rational number to a negative integer power" do
      RationalNumbers.exp({3, 5}, -2).should eq({25, 9})
    end

    it "Raise a negative rational number to an even negative integer power" do
      RationalNumbers.exp({-3, 5}, -2).should eq({25, 9})
    end

    it "Raise a negative rational number to an odd negative integer power" do
      RationalNumbers.exp({-3, 5}, -3).should eq({-125, 27})
    end

    it "Raise zero to an integer power" do
      RationalNumbers.exp({0, 1}, 5).should eq({0, 1})
    end

    it "Raise one to an integer power" do
      RationalNumbers.exp({1, 1}, 4).should eq({1, 1})
    end

    it "Raise a positive rational number to the power of zero" do
      RationalNumbers.exp({1, 2}, 0).should eq({1, 1})
    end

    it "Raise a negative rational number to the power of zero" do
      RationalNumbers.exp({-1, 2}, 0).should eq({1, 1})
    end
  end

  describe "Exponentiation of a real number to a rational number" do
    it "Raise a real number to a positive rational number" do
      RationalNumbers.exp(8, {4, 3}).should be_close(16.0, 1e-9)
    end

    it "Raise a real number to a negative rational number" do
      RationalNumbers.exp(9, {-1, 2}).should be_close(0.3333333333333333, 1e-9)
    end

    it "Raise a real number to a zero rational number" do
      RationalNumbers.exp(2, {0, 1}).should be_close(1.0, 1e-9)
    end
  end

  describe "Reduction to lowest terms" do
    it "Reduce a positive rational number to lowest terms" do
      RationalNumbers.reduce({2, 4}).should eq({1, 2})
    end

    it "Reduce places the minus sign on the numerator" do
      RationalNumbers.reduce({3, -4}).should eq({-3, 4})
    end

    it "Reduce a negative rational number to lowest terms" do
      RationalNumbers.reduce({-4, 6}).should eq({-2, 3})
    end

    it "Reduce a rational number with a negative denominator to lowest terms" do
      RationalNumbers.reduce({3, -9}).should eq({-1, 3})
    end

    it "Reduce zero to lowest terms" do
      RationalNumbers.reduce({0, 6}).should eq({0, 1})
    end

    it "Reduce an integer to lowest terms" do
      RationalNumbers.reduce({-14, 7}).should eq({-2, 1})
    end

    it "Reduce one to lowest terms" do
      RationalNumbers.reduce({13, 13}).should eq({1, 1})
    end
  end
end
