defmodule DartsTest do
  use ExUnit.Case

  # 
  test "Missed target" do
    assert Darts.score({-9, 9}) == 0
  end

  test "On the outer circle" do
    assert Darts.score({0, 10}) == 1
  end

  test "On the middle circle" do
    assert Darts.score({-5, 0}) == 5
  end

  test "On the inner circle" do
    assert Darts.score({0, -1}) == 10
  end

  test "Exactly on centre" do
    assert Darts.score({0, 0}) == 10
  end

  test "Near the centre" do
    assert Darts.score({-0.1, -0.1}) == 10
  end

  test "Just within the inner circle" do
    assert Darts.score({0.7, 0.7}) == 10
  end

  test "Just outside the inner circle" do
    assert Darts.score({0.8, -0.8}) == 5
  end

  test "Just within the middle circle" do
    assert Darts.score({-3.5, 3.5}) == 5
  end

  test "Just outside the middle circle" do
    assert Darts.score({-3.6, -3.6}) == 1
  end

  test "Just within the outer circle" do
    assert Darts.score({-7.0, 7.0}) == 1
  end

  test "Just outside the outer circle" do
    assert Darts.score({7.1, -7.1}) == 0
  end

  test "Asymmetric position between the inner and middle circles" do
    assert Darts.score({0.5, -4}) == 5
  end
end
