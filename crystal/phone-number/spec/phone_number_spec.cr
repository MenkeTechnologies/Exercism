require "spec"
require "../src/*"

describe "PhoneNumber" do
  it "cleans the number" do
    PhoneNumber.clean("(223) 456-7890").should eq("2234567890")
  end

  it "cleans numbers with dots" do
    PhoneNumber.clean("223.456.7890").should eq("2234567890")
  end

  it "cleans numbers with multiple spaces" do
    PhoneNumber.clean("223 456   7890   ").should eq("2234567890")
  end

  it "invalid when 9 digits" do
    expect_raises(ArgumentError) do
      PhoneNumber.clean("123456789")
    end
  end

  it "invalid when 11 digits does not start with a 1" do
    expect_raises(ArgumentError) do
      PhoneNumber.clean("22234567890")
    end
  end

  it "valid when 11 digits and starting with 1" do
    PhoneNumber.clean("12234567890").should eq("2234567890")
  end

  it "valid when 11 digits and starting with 1 even with punctuation" do
    PhoneNumber.clean("+1 (223) 456-7890").should eq("2234567890")
  end

  it "invalid when more than 11 digits" do
    expect_raises(ArgumentError) do
      PhoneNumber.clean("321234567890")
    end
  end

  it "invalid with letters" do
    expect_raises(ArgumentError) do
      PhoneNumber.clean("523-abc-7890")
    end
  end

  it "invalid with punctuations" do
    expect_raises(ArgumentError) do
      PhoneNumber.clean("523-@:!-7890")
    end
  end

  it "invalid if area code starts with 0" do
    expect_raises(ArgumentError) do
      PhoneNumber.clean("(023) 456-7890")
    end
  end

  it "invalid if area code starts with 1" do
    expect_raises(ArgumentError) do
      PhoneNumber.clean("(123) 456-7890")
    end
  end

  it "invalid if exchange code starts with 0" do
    expect_raises(ArgumentError) do
      PhoneNumber.clean("(223) 056-7890")
    end
  end

  it "invalid if exchange code starts with 1" do
    expect_raises(ArgumentError) do
      PhoneNumber.clean("(223) 156-7890")
    end
  end

  it "invalid if area code starts with 0 on valid 11-digit number" do
    expect_raises(ArgumentError) do
      PhoneNumber.clean("1 (023) 456-7890")
    end
  end

  it "invalid if area code starts with 1 on valid 11-digit number" do
    expect_raises(ArgumentError) do
      PhoneNumber.clean("1 (123) 456-7890")
    end
  end

  it "invalid if exchange code starts with 0 on valid 11-digit number" do
    expect_raises(ArgumentError) do
      PhoneNumber.clean("1 (223) 056-7890")
    end
  end

  it "invalid if exchange code starts with 1 on valid 11-digit number" do
    expect_raises(ArgumentError) do
      PhoneNumber.clean("1 (223) 156-7890")
    end
  end
end
