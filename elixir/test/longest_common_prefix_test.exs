defmodule LongestCommonPrefixTest do
  use ExUnit.Case

  test "example cases" do
    case1 = ["flower", "flow", "flight"]
    case2 = ["dog", "racecar", "car"]

    assert LongestCommonPrefix.longest_common_prefix(case1) == "fl"
    assert LongestCommonPrefix.longest_common_prefix(case2) == ""
  end

  test "edgecases" do
    assert LongestCommonPrefix.longest_common_prefix(["foo"]) == "foo"
    assert LongestCommonPrefix.longest_common_prefix([""]) == ""
    assert LongestCommonPrefix.longest_common_prefix(["a", ""]) == ""
  end
end
