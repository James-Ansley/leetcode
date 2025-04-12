defmodule PalindromeNumber do
  @moduledoc """
  See: <https://leetcode.com/problems/palindrome-number>
  """

  @spec is_palindrome(x :: integer) :: boolean
  def is_palindrome(x) when x < 0, do: false
  def is_palindrome(x), do: is_palindrome(x, x, [])
  def is_palindrome(0, 0, []), do: true

  def is_palindrome(original, 0, [head | tail]) do
    rem(original, 10) == head and is_palindrome(div(original, 10), 0, tail)
  end

  def is_palindrome(original, partial, stack) do
    is_palindrome(original, div(partial, 10), [rem(partial, 10) | stack])
  end
end
