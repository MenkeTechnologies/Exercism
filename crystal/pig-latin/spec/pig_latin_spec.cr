require "spec"
require "../src/*"

describe "PigLatin" do
  describe "ay is added to words that start with vowels" do
    it "word beginning with a" do
      PigLatin.translate("apple").should eq("appleay")
    end

    it "word beginning with e" do
      PigLatin.translate("ear").should eq("earay")
    end

    it "word beginning with i" do
      PigLatin.translate("igloo").should eq("iglooay")
    end

    it "word beginning with o" do
      PigLatin.translate("object").should eq("objectay")
    end

    it "word beginning with u" do
      PigLatin.translate("under").should eq("underay")
    end

    it "word beginning with a vowel and followed by a qu" do
      PigLatin.translate("equal").should eq("equalay")
    end
  end

  describe "first letter and ay are moved to the end of words that start with consonants" do
    it "word beginning with p" do
      PigLatin.translate("pig").should eq("igpay")
    end

    it "word beginning with k" do
      PigLatin.translate("koala").should eq("oalakay")
    end

    it "word beginning with x" do
      PigLatin.translate("xenon").should eq("enonxay")
    end

    it "word beginning with q without a following u" do
      PigLatin.translate("qat").should eq("atqay")
    end
  end

  describe "some letter clusters are treated like a single consonant" do
    it "word beginning with ch" do
      PigLatin.translate("chair").should eq("airchay")
    end

    it "word beginning with qu" do
      PigLatin.translate("queen").should eq("eenquay")
    end

    it "word beginning with qu and a preceding consonant" do
      PigLatin.translate("square").should eq("aresquay")
    end

    it "word beginning with th" do
      PigLatin.translate("therapy").should eq("erapythay")
    end

    it "word beginning with thr" do
      PigLatin.translate("thrush").should eq("ushthray")
    end

    it "word beginning with sch" do
      PigLatin.translate("school").should eq("oolschay")
    end
  end

  describe "some letter clusters are treated like a single vowel" do
    it "word beginning with yt" do
      PigLatin.translate("yttria").should eq("yttriaay")
    end

    it "word beginning with xr" do
      PigLatin.translate("xray").should eq("xrayay")
    end
  end

  describe "position of y in a word determines if it is a consonant or a vowel" do
    it "y is treated like a consonant at the beginning of a word" do
      PigLatin.translate("yellow").should eq("ellowyay")
    end

    it "y is treated like a vowel at the end of a consonant cluster" do
      PigLatin.translate("rhythm").should eq("ythmrhay")
    end

    it "y as second letter in two letter word" do
      PigLatin.translate("my").should eq("ymay")
    end
  end

  describe "phrases are translated" do
    it "a whole phrase" do
      PigLatin.translate("quick fast run").should eq("ickquay astfay unray")
    end
  end
end
