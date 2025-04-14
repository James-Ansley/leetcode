defmodule MedianOfTwoSortedArraysTest do
  use ExUnit.Case

  import MedianOfTwoSortedArrays

  @moduletag :capture_log

  doctest MedianOfTwoSortedArrays

  test "example cases" do
    assert find_median_sorted_arrays([1, 3], [2]) == 2
    assert find_median_sorted_arrays([1, 2], [3, 4]) == 2.5
  end

  test "extra cases" do
    assert find_median_sorted_arrays([1], []) == 1
    assert find_median_sorted_arrays([], [1]) == 1
    assert find_median_sorted_arrays([1], [2]) == 1.5
    assert find_median_sorted_arrays([1, 3, 5], [2, 4]) == 3
    assert find_median_sorted_arrays([1, 3, 4, 5, 6], [2]) == 3.5
  end
end
