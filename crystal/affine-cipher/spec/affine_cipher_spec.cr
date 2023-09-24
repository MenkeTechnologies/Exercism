require "spec"
require "../src/*"

describe "AffineCipher" do
  describe "encode" do
    it "encode yes" do
      AffineCipher.encode(5, 7, "yes")
        .should eq("xbt")
    end

    it "encode no" do
      AffineCipher.encode(15, 18, "no")
        .should eq("fu")
    end

    it "encode OMG" do
      AffineCipher.encode(21, 3, "OMG")
        .should eq("lvz")
    end

    it "encode O M G" do
      AffineCipher.encode(25, 47, "O M G")
        .should eq("hjp")
    end

    it "encode mindblowingly" do
      AffineCipher.encode(11, 15, "mindblowingly")
        .should eq("rzcwa gnxzc dgt")
    end

    it "encode numbers" do
      AffineCipher.encode(3, 4, "Testing,1 2 3, testing.")
        .should eq("jqgjc rw123 jqgjc rw")
    end

    it "encode deep thought" do
      AffineCipher.encode(5, 17, "Truth is fiction.")
        .should eq("iynia fdqfb ifje")
    end

    it "encode all the letters" do
      AffineCipher.encode(17, 33, "The quick brown fox jumps over the lazy dog.")
        .should eq("swxtj npvyk lruol iejdc blaxk swxmh qzglf")
    end

    it "encode with a not coprime to m" do
      expect_raises(ArgumentError) do
        AffineCipher.encode(6, 17, "This is a test.")
      end
    end
  end

  describe "decode" do
    it "decode exercism" do
      AffineCipher.decode(3, 7, "tytgn fjr")
        .should eq("exercism")
    end

    it "decode a sentence" do
      AffineCipher.decode(19, 16, "qdwju nqcro muwhn odqun oppmd aunwd o")
        .should eq("anobstacleisoftenasteppingstone")
    end

    it "decode numbers" do
      AffineCipher.decode(25, 7, "odpoz ub123 odpoz ub")
        .should eq("testing123testing")
    end

    it "decode all the letters" do
      AffineCipher.decode(17, 33, "swxtj npvyk lruol iejdc blaxk swxmh qzglf")
        .should eq("thequickbrownfoxjumpsoverthelazydog")
    end

    it "decode with no spaces in input" do
      AffineCipher.decode(17, 33, "swxtjnpvyklruoliejdcblaxkswxmhqzglf")
        .should eq("thequickbrownfoxjumpsoverthelazydog")
    end

    it "decode with too many spaces" do
      AffineCipher.decode(15, 16, "vszzm    cly   yd cg    qdp")
        .should eq("jollygreengiant")
    end

    it "decode with a not coprime to m" do
      expect_raises(ArgumentError) do
        AffineCipher.decode(13, 5, "Test")
      end
    end
  end
end
