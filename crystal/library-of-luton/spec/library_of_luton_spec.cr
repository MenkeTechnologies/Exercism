require "spec"
require "../src/*"

describe "Library" do
  describe "first_letter", tags: "task_id=1" do
    it "Should return the first letter of a title" do
      Library.first_letter("Mystery of the Crystal Skull").should eq 'M'
    end

    it "Should return the first letter of another title" do
      Library.first_letter("Cave and the Crystals").should eq 'C'
    end

    it "Should return the first letter of a third title" do
      Library.first_letter("A Crystals story").should eq 'A'
    end
  end

  describe "initials", tags: "task_id=2" do
    it "Should return the initials of a author" do
      Library.initials("William", "Shakespeare").should eq "W.S"
    end

    it "Should return the initials of another author" do
      Library.initials("George", "Orwell").should eq "G.O"
    end

    it "Should return the initials of a third author" do
      Library.initials("Karin", "Boye").should eq "K.B"
    end
  end

  describe "decrypt_character", tags: "task_id=3" do
    it "Should return the decrypted character of 'B' character" do
      Library.decrypt_character('B').should eq 'A'
    end

    it "Should return the decrypted character of 'C' character" do
      Library.decrypt_character('C').should eq 'B'
    end

    it "Should return the decrypted character of a 'A' character" do
      Library.decrypt_character('A').should eq 'Z'
    end

    it "Should return the decrypted character of a 'Z' character" do
      Library.decrypt_character('Z').should eq 'Y'
    end

    it "Should return the decrypted character of a 'a' character" do
      Library.decrypt_character('a').should eq 'z'
    end

    it "Should return the decrypted character of a 'z' character" do
      Library.decrypt_character('z').should eq 'y'
    end
  end

  describe "decrypt_text", tags: "task_id=4" do
    it "Should return the decrypted text of a text" do
      expected = "Hello World!"
      Library.decrypt_text("Ifmmp Xpsme!").should eq expected
    end

    it "Should return the decrypted text of another text" do
      expected = "A town by the area 1000 with the capital."
      Library.decrypt_text("B upxo cz uif bsfb 1000 xjui uif dbqjubm.").should eq expected
    end

    it "Should return the decrypted text of a third text" do
      expected = "The quick brown fox jumps over the lazy dog."
      Library.decrypt_text("Uif rvjdl cspxo gpy kvnqt pwfs uif mbaz eph.").should eq expected
    end

    it "Can take various symbols in a text" do
      expected = "The quick brown fox jumps $%.!?& over the lazy dog."
      Library.decrypt_text("Uif rvjdl cspxo gpy kvnqt $%.!?& pwfs uif mbaz eph.").should eq expected
    end
  end
end
