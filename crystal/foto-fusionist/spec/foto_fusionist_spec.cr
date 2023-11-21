require "spec"
require "../src/*"

describe "FotoFusionist" do
  describe "binary_to_int" do
    it "should be able to convert 00000001 binary to int" do
      FotoFusionist.binary_to_int("00000001").should eq 1
    end

    it "should be able to convert 00000010 binary to int" do
      FotoFusionist.binary_to_int("00000010").should eq 2
    end

    it "should be able to convert 11010011 binary to int" do
      FotoFusionist.binary_to_int("11010011").should eq 211
    end
  end

  describe "least_significant_bit" do
    it "should be able to get the least significant bit of 0b1" do
      FotoFusionist.least_significant_bit(0b1).should eq 1
    end

    it "should be able to get the least significant bit of 0b0" do
      FotoFusionist.least_significant_bit(0b0).should eq 0
    end

    it "should be able to get the least significant bit of 0b11010011" do
      FotoFusionist.least_significant_bit(0b10).should eq 0
    end
  end

  describe "hex_value" do
    it "should be able to convert 19 to hex" do
      FotoFusionist.hex_value(19).should eq "13"
    end

    it "should be able to convert 0 to hex" do
      FotoFusionist.hex_value(0).should eq "00"
    end

    it "should be able to convert 255 to hex" do
      FotoFusionist.hex_value(255).should eq "ff"
    end

    it "should be able to convert 128 to hex" do
      FotoFusionist.hex_value(128).should eq "80"
    end
  end

  describe "hex_value_from_rgb" do
    it "should be able to convert 0,0,0 to hex" do
      FotoFusionist.hex_value_from_rgb(0, 0, 0).should eq "000000"
    end

    it "should be able to convert 255,255,255 to hex" do
      FotoFusionist.hex_value_from_rgb(255, 255, 255).should eq "ffffff"
    end

    it "should be able to convert 255,0,0 to hex" do
      FotoFusionist.hex_value_from_rgb(255, 0, 0).should eq "ff0000"
    end

    it "should be able to convert 128,55,30 to hex" do
      FotoFusionist.hex_value_from_rgb(128, 55, 30).should eq "80371e"
    end

    it "should be able to convert 20,232,179 to hex" do
      FotoFusionist.hex_value_from_rgb(20, 232, 179).should eq "14e8b3"
    end
  end
end
