defmodule LuhnTest do
  use ExUnit.Case

  # 
  test "single digit strings can not be valid" do
    refute Luhn.valid?("1")
  end

  test "A single zero is invalid" do
    refute Luhn.valid?("0")
  end

  test "a simple valid SIN that remains valid if reversed" do
    assert Luhn.valid?("059")
  end

  test "a simple valid SIN that becomes invalid if reversed" do
    assert Luhn.valid?("59")
  end

  test "a valid Canadian SIN" do
    assert Luhn.valid?("055 444 285")
  end

  test "invalid Canadian SIN" do
    refute Luhn.valid?("055 444 286")
  end

  test "invalid credit card" do
    refute Luhn.valid?("8273 1232 7352 0569")
  end

  test "invalid long number with an even remainder" do
    refute Luhn.valid?("1 2345 6789 1234 5678 9012")
  end

  test "valid number with an even number of digits" do
    assert Luhn.valid?("095 245 88")
  end

  test "valid number with an odd number of spaces" do
    assert Luhn.valid?("234 567 891 234")
  end

  test "valid strings with a non-digit added at the end become invalid" do
    refute Luhn.valid?("059a")
  end

  test "valid strings with a non-digit included become invalid" do
    refute Luhn.valid?("055a 444 285")
  end

  test "valid strings with punctuation included become invalid" do
    refute Luhn.valid?("055-444-285")
  end

  test "valid strings with symbols included become invalid" do
    refute Luhn.valid?("055# 444$ 285")
  end

  test "single zero with space is invalid" do
    refute Luhn.valid?(" 0")
  end

  test "more than a single zero is valid" do
    assert Luhn.valid?("0000 0")
  end

  test "input digit 9 is correctly converted to output digit 9" do
    assert Luhn.valid?("091")
  end

  test "very long input is valid" do
    assert Luhn.valid?("9999999999 9999999999 9999999999 9999999999")
  end

  test "valid luhn with an odd number of digits and non zero first digit" do
    assert Luhn.valid?("109")
  end

  test "using ascii value for non-doubled non-digit isn't allowed" do
    refute Luhn.valid?("055b 444 285")
  end

  test "using ascii value for doubled non-digit isn't allowed" do
    refute Luhn.valid?(":9")
  end

  test "non-numeric, non-space char in the middle with a sum that's divisible by 10 isn't allowed" do
    refute Luhn.valid?("59%59")
  end
end
