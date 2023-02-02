require "spec"
require "../src/*"

describe "RotationalCipher" do
  it "rotate a by 0, same output as input" do
    RotationalCipher.rotate("a", 0).should eq("a")
  end

  pending "rotate a by 1" do
    RotationalCipher.rotate("a", 1).should eq("b")
  end

  pending "rotate a by 26, same output as input" do
    RotationalCipher.rotate("a", 26).should eq("a")
  end

  pending "rotate m by 13" do
    RotationalCipher.rotate("m", 13).should eq("z")
  end

  pending "rotate n by 13 with wrap around alphabet" do
    RotationalCipher.rotate("n", 13).should eq("a")
  end

  pending "rotate capital letters" do
    RotationalCipher.rotate("OMG", 5).should eq("TRL")
  end

  pending "rotate spaces" do
    RotationalCipher.rotate("O M G", 5).should eq("T R L")
  end

  pending "rotate numbers" do
    RotationalCipher.rotate("Testing 1 2 3 testing", 4).should eq("Xiwxmrk 1 2 3 xiwxmrk")
  end

  pending "rotate punctuation" do
    RotationalCipher.rotate("Let's eat, Grandma!", 21).should eq("Gzo'n zvo, Bmviyhv!")
  end

  pending "rotate all letters" do
    RotationalCipher.rotate("The quick brown fox jumps over the lazy dog.", 13).should eq("Gur dhvpx oebja sbk whzcf bire gur ynml qbt.")
  end
end
