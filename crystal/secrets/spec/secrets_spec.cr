require "spec"
require "../src/*"

describe "Secrets" do
  describe "shift_back", tags: "task_id=1" do
    it "should be able to shift 0 places" do
      Secrets.shift_back(15, 0).should eq 15
    end

    it "should be able to shift 1 place to the left" do
      Secrets.shift_back(7, 1).should eq 14
    end

    it "should be able to shift 4 places to the left" do
      Secrets.shift_back(5, 4).should eq 80
    end

    it "should be able to shift bits off" do
      Secrets.shift_back(96, 4).should eq 0
    end
  end

  describe "apply_mask", tags: "task_id=2" do
    it "should be able to AND value with mask bits all 1" do
      Secrets.apply_mask(101, 255).should eq 101
    end

    it "should be able to AND value with mask bits all 0" do
      Secrets.apply_mask(101, 0).should eq 0
    end

    it "should be able to AND value with some bits 1" do
      Secrets.apply_mask(62, 85).should eq 20
    end
  end

  describe "set_bits", tags: "task_id=3" do
    it "should be able to OR value with 0s" do
      Secrets.set_bits(107, 0).should eq 107
    end

    it "should be able to OR with with 1s" do
      Secrets.set_bits(107, 255).should eq 255
    end

    it "should be able to set some bits" do
      Secrets.set_bits(62, 85).should eq 127
    end
  end

  describe "reverse_xor", tags: "task_id=4" do
    it "should be able to reverse with all 1s" do
      Secrets.reverse_xor(106, 255).should eq 106
    end

    it "should be able to reverse with all 0s" do
      Secrets.reverse_xor(106, 0).should eq 149
    end

    it "should be able to reverse with mix of 1s and 0s" do
      Secrets.reverse_xor(62, 85).should eq 148
    end
  end
end
