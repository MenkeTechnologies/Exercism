require "spec"
require "../src/*"

describe "RomanNumerals" do
  it "1 is I" do
    1.to_roman.should eq("I")
  end

  pending "2 is II" do
    2.to_roman.should eq("II")
  end

  pending "3 is III" do
    3.to_roman.should eq("III")
  end

  pending "4 is IV" do
    4.to_roman.should eq("IV")
  end

  pending "5 is V" do
    5.to_roman.should eq("V")
  end

  pending "6 is VI" do
    6.to_roman.should eq("VI")
  end

  pending "9 is IX" do
    9.to_roman.should eq("IX")
  end

  pending "16 is XVI" do
    16.to_roman.should eq("XVI")
  end

  pending "27 is XXVII" do
    27.to_roman.should eq("XXVII")
  end

  pending "48 is XLVIII" do
    48.to_roman.should eq("XLVIII")
  end

  pending "49 is XLIX" do
    49.to_roman.should eq("XLIX")
  end

  pending "59 is LIX" do
    59.to_roman.should eq("LIX")
  end

  pending "66 is LXVI" do
    66.to_roman.should eq("LXVI")
  end

  pending "93 is XCIII" do
    93.to_roman.should eq("XCIII")
  end

  pending "141 is CXLI" do
    141.to_roman.should eq("CXLI")
  end

  pending "163 is CLXIII" do
    163.to_roman.should eq("CLXIII")
  end

  pending "166 is CLXVI" do
    166.to_roman.should eq("CLXVI")
  end

  pending "402 is CDII" do
    402.to_roman.should eq("CDII")
  end

  pending "575 is DLXXV" do
    575.to_roman.should eq("DLXXV")
  end

  pending "666 is DCLXVI" do
    666.to_roman.should eq("DCLXVI")
  end

  pending "911 is CMXI" do
    911.to_roman.should eq("CMXI")
  end

  pending "1024 is MXXIV" do
    1024.to_roman.should eq("MXXIV")
  end

  pending "1666 is MDCLXVI" do
    1666.to_roman.should eq("MDCLXVI")
  end

  pending "3000 is MMM" do
    3000.to_roman.should eq("MMM")
  end

  pending "3001 is MMMI" do
    3001.to_roman.should eq("MMMI")
  end

  pending "3888 is MMMDCCCLXXXVIII" do
    3888.to_roman.should eq("MMMDCCCLXXXVIII")
  end

  pending "3999 is MMMCMXCIX" do
    3999.to_roman.should eq("MMMCMXCIX")
  end
end
