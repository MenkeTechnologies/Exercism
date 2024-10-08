defmodule KillerSudokuHelperTest do
  use ExUnit.Case

  describe "Trivial 1-digit cages" do
    # 
    test "1" do
      cage = %{exclude: [], size: 1, sum: 1}
      assert KillerSudokuHelper.combinations(cage) == [[1]]
    end

    test "2" do
      cage = %{exclude: [], size: 1, sum: 2}
      assert KillerSudokuHelper.combinations(cage) == [[2]]
    end

    test "3" do
      cage = %{exclude: [], size: 1, sum: 3}
      assert KillerSudokuHelper.combinations(cage) == [[3]]
    end

    test "4" do
      cage = %{exclude: [], size: 1, sum: 4}
      assert KillerSudokuHelper.combinations(cage) == [[4]]
    end

    test "5" do
      cage = %{exclude: [], size: 1, sum: 5}
      assert KillerSudokuHelper.combinations(cage) == [[5]]
    end

    test "6" do
      cage = %{exclude: [], size: 1, sum: 6}
      assert KillerSudokuHelper.combinations(cage) == [[6]]
    end

    test "7" do
      cage = %{exclude: [], size: 1, sum: 7}
      assert KillerSudokuHelper.combinations(cage) == [[7]]
    end

    test "8" do
      cage = %{exclude: [], size: 1, sum: 8}
      assert KillerSudokuHelper.combinations(cage) == [[8]]
    end

    test "9" do
      cage = %{exclude: [], size: 1, sum: 9}
      assert KillerSudokuHelper.combinations(cage) == [[9]]
    end
  end

  test "Cage with sum 45 contains all digits 1:9" do
    cage = %{exclude: [], size: 9, sum: 45}
    assert KillerSudokuHelper.combinations(cage) == [[1, 2, 3, 4, 5, 6, 7, 8, 9]]
  end

  test "Cage with only 1 possible combination" do
    cage = %{exclude: [], size: 3, sum: 7}
    assert KillerSudokuHelper.combinations(cage) == [[1, 2, 4]]
  end

  test "Cage with several combinations" do
    cage = %{exclude: [], size: 2, sum: 10}
    assert KillerSudokuHelper.combinations(cage) == [[1, 9], [2, 8], [3, 7], [4, 6]]
  end

  test "Cage with several combinations that is restricted" do
    cage = %{exclude: [1, 4], size: 2, sum: 10}
    assert KillerSudokuHelper.combinations(cage) == [[2, 8], [3, 7]]
  end
end
