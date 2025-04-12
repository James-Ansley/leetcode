defmodule PalindromeNumberTest do
  use ExUnit.Case

  test "example cases" do
    assert PalindromeNumber.is_palindrome(121)
    assert not PalindromeNumber.is_palindrome(-121)
    assert not PalindromeNumber.is_palindrome(10)
  end

  test "edge cases" do
    assert PalindromeNumber.is_palindrome(1221)
    assert PalindromeNumber.is_palindrome(0)
    assert PalindromeNumber.is_palindrome(-0)
  end
end
