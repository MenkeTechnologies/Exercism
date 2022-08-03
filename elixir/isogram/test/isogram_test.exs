defmodule IsogramTest do
  use ExUnit.Case

  # 
  test "empty string" do
    assert Isogram.isogram?("")
  end

  test "isogram with only lower case characters" do
    assert Isogram.isogram?("isogram")
  end

  test "word with one duplicated character" do
    refute Isogram.isogram?("eleven")
  end

  test "word with one duplicated character from the end of the alphabet" do
    refute Isogram.isogram?("zzyzx")
  end

  test "longest reported english isogram" do
    assert Isogram.isogram?("subdermatoglyphic")
  end

  test "word with duplicated character in mixed case" do
    refute Isogram.isogram?("Alphabet")
  end

  test "word with duplicated character in mixed case, lowercase first" do
    refute Isogram.isogram?("alphAbet")
  end

  test "hypothetical isogrammic word with hyphen" do
    assert Isogram.isogram?("thumbscrew-japingly")
  end

  test "hypothetical word with duplicated character following hyphen" do
    refute Isogram.isogram?("thumbscrew-jappingly")
  end

  test "isogram with duplicated hyphen" do
    assert Isogram.isogram?("six-year-old")
  end

  test "made-up name that is an isogram" do
    assert Isogram.isogram?("Emily Jung Schwartzkopf")
  end

  test "duplicated character in the middle" do
    refute Isogram.isogram?("accentor")
  end

  test "same first and last characters" do
    refute Isogram.isogram?("angola")
  end

  test "word with duplicated character and with two hyphens" do
    refute Isogram.isogram?("up-to-date")
  end
end
