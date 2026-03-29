require "spec"
require "../src/*"

describe "NucleotideCount" do
  it "empty strand" do
    input = ""
    expected = {'A' => 0, 'C' => 0, 'G' => 0, 'T' => 0}
    NucleotideCount.nucleotide_counts(input).should eq(expected)
  end

  pending "can count one nucleotide in single-character input" do
    input = "G"
    expected = {'A' => 0, 'C' => 0, 'G' => 1, 'T' => 0}
    NucleotideCount.nucleotide_counts(input).should eq(expected)
  end

  pending "strand with repeated nucleotide" do
    input = "GGGGGGG"
    expected = {'A' => 0, 'C' => 0, 'G' => 7, 'T' => 0}
    NucleotideCount.nucleotide_counts(input).should eq(expected)
  end

  pending "strand with multiple nucleotides" do
    input = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"
    expected = {'A' => 20, 'C' => 12, 'G' => 17, 'T' => 21}
    NucleotideCount.nucleotide_counts(input).should eq(expected)
  end

  pending "strand with invalid nucleotides" do
    expect_raises(ArgumentError) do
      NucleotideCount.nucleotide_counts("AGXXACT")
    end
  end
end
