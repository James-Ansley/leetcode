defmodule LongestSubstringWithoutRepeatingCharactersTest do
  use ExUnit.Case

  import LongestSubstringWithoutRepeatingCharacters

  test "example cases" do
    assert length_of_longest_substring("abcabcbb") == 3
    assert length_of_longest_substring("bbbbb") == 1
    assert length_of_longest_substring("pwwkew") == 3
  end

  test "exta cases" do
    assert length_of_longest_substring("") == 0
    assert length_of_longest_substring(" ") == 1
    assert length_of_longest_substring("abba") == 2
  end
end
