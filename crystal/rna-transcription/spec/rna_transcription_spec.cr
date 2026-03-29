require "spec"
require "../src/*"

describe "RnaTranscription" do
  it "Empty RNA sequence" do
    RnaComplement.of_dna("").should eq("")
  end

  pending "RNA complement of cytosine is guanine" do
    RnaComplement.of_dna("C").should eq("G")
  end

  pending "RNA complement of guanine is cytosine" do
    RnaComplement.of_dna("G").should eq("C")
  end

  pending "RNA complement of thymine is adenine" do
    RnaComplement.of_dna("T").should eq("A")
  end

  pending "RNA complement of adenine is uracil" do
    RnaComplement.of_dna("A").should eq("U")
  end

  pending "RNA complement" do
    RnaComplement.of_dna("ACGTGGTCTTAA").should eq("UGCACCAGAAUU")
  end
end
