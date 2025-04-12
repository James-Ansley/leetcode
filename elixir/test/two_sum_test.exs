defmodule TwoSumTest do
  use ExUnit.Case

  test "example cases" do
    assert TwoSum.two_sum([2, 7, 11, 15], 9) == [0, 1]
    assert TwoSum.two_sum([3, 2, 4], 6) == [1, 2]
    assert TwoSum.two_sum([3, 3], 6) == [0, 1]
  end
end
