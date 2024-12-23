require "spec"
require "../src/*"

describe "ScaleGenerator" do
  describe "Chromatic scales" do
    it "Chromatic scale with sharps" do
      expected = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"]
      ScaleGenerator.chromatic("C").should eq(expected)
    end

    it "Chromatic scale with flats" do
      expected = ["F", "Gb", "G", "Ab", "A", "Bb", "B", "C", "Db", "D", "Eb", "E"]
      ScaleGenerator.chromatic("F").should eq(expected)
    end
  end

  describe "Scales with specified intervals" do
    it "Simple major scale" do
      expected = ["C", "D", "E", "F", "G", "A", "B", "C"]
      ScaleGenerator.interval("C", "MMmMMMm").should eq(expected)
    end

    it "Major scale with sharps" do
      expected = ["G", "A", "B", "C", "D", "E", "F#", "G"]
      ScaleGenerator.interval("G", "MMmMMMm").should eq(expected)
    end

    it "Major scale with flats" do
      expected = ["F", "G", "A", "Bb", "C", "D", "E", "F"]
      ScaleGenerator.interval("F", "MMmMMMm").should eq(expected)
    end

    it "Minor scale with sharps" do
      expected = ["F#", "G#", "A", "B", "C#", "D", "E", "F#"]
      ScaleGenerator.interval("f#", "MmMMmMM").should eq(expected)
    end

    it "Minor scale with flats" do
      expected = ["Bb", "C", "Db", "Eb", "F", "Gb", "Ab", "Bb"]
      ScaleGenerator.interval("bb", "MmMMmMM").should eq(expected)
    end

    it "Dorian mode" do
      expected = ["D", "E", "F", "G", "A", "B", "C", "D"]
      ScaleGenerator.interval("d", "MmMMMmM").should eq(expected)
    end

    it "Mixolydian mode" do
      expected = ["Eb", "F", "G", "Ab", "Bb", "C", "Db", "Eb"]
      ScaleGenerator.interval("Eb", "MMmMMmM").should eq(expected)
    end

    it "Lydian mode" do
      expected = ["A", "B", "C#", "D#", "E", "F#", "G#", "A"]
      ScaleGenerator.interval("a", "MMMmMMm").should eq(expected)
    end

    it "Phrygian mode" do
      expected = ["E", "F", "G", "A", "B", "C", "D", "E"]
      ScaleGenerator.interval("e", "mMMMmMM").should eq(expected)
    end

    it "Locrian mode" do
      expected = ["G", "Ab", "Bb", "C", "Db", "Eb", "F", "G"]
      ScaleGenerator.interval("g", "mMMmMMM").should eq(expected)
    end

    it "Harmonic minor" do
      expected = ["D", "E", "F", "G", "A", "Bb", "Db", "D"]
      ScaleGenerator.interval("d", "MmMMmAm").should eq(expected)
    end

    it "Octatonic" do
      expected = ["C", "D", "D#", "F", "F#", "G#", "A", "B", "C"]
      ScaleGenerator.interval("C", "MmMmMmMm").should eq(expected)
    end

    it "Hexatonic" do
      expected = ["Db", "Eb", "F", "G", "A", "B", "Db"]
      ScaleGenerator.interval("Db", "MMMMMM").should eq(expected)
    end

    it "Pentatonic" do
      expected = ["A", "B", "C#", "E", "F#", "A"]
      ScaleGenerator.interval("A", "MMAMA").should eq(expected)
    end

    it "Enigmatic" do
      expected = ["G", "G#", "B", "C#", "D#", "F", "F#", "G"]
      ScaleGenerator.interval("G", "mAMMMmm").should eq(expected)
    end
  end
end
