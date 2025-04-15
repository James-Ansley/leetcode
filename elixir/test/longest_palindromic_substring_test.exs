defmodule LongestPalindromicSubstringTest do
  use ExUnit.Case

  import LongestPalindromicSubstring


  test "example cases" do
    assert longest_palindrome("babad") == "bab"
    assert longest_palindrome("cbbd") == "bb"
  end

  test "extra cases" do
    assert longest_palindrome("a") == "a"
    assert longest_palindrome("aa") == "aa"
    assert longest_palindrome("aaa") == "aaa"
    assert longest_palindrome("aaab") == "aaa"
    assert longest_palindrome("aaabbb") == "aaa"
    assert longest_palindrome("baaa") == "aaa"
    assert longest_palindrome("cbbd") == "bb"
    assert longest_palindrome("xcbbcz") == "cbbc"
    assert longest_palindrome("xcbabcz") == "cbabc"
    assert longest_palindrome("abcxyxabc") == "xyx"
    assert longest_palindrome("abacdedc") == "cdedc"
  end
end
