defmodule LongestPalindromicSubstring do
  @moduledoc """
  See: <https://leetcode.com/problems/longest-palindromic-substring>
  """

  @spec longest_palindrome(string :: String.t()) :: String.t()
  def longest_palindrome(string) do
    [first | rest] = String.graphemes(string)
    search(rest, [first], [first], 1)
  end

  defp search([], _, substring, length) when rem(length, 2) == 1 do
    reversed = Enum.reverse(substring)
    Enum.concat(substring, tl(reversed)) |> Enum.join()
  end

  defp search([], _, substring, length) when rem(length, 2) == 0 do
    reversed = Enum.reverse(substring)
    Enum.concat(substring, reversed) |> Enum.join()
  end

  defp search(chars, stack, substring, longest) do
    {len, match} = search_ahead(chars, stack)

    case max(longest, len) do
      ^longest -> search(tl(chars), [hd(chars) | stack], substring, longest)
      ^len -> search(tl(chars), [hd(chars) | stack], match, len)
    end
  end

  defp search_ahead(chars, stack) do
    max(
      zip_stacks(chars, stack, 0),
      zip_stacks(chars, tl(stack), 1, [hd(stack)])
    )
  end

  defp zip_stacks(chars, stack, parity, result \\ [], count \\ 0)

  defp zip_stacks([char | chars], [char | stack], parity, result, count) do
    zip_stacks(chars, stack, parity, [char | result], count + 1)
  end

  defp zip_stacks(_, _, parity, result, count), do: {count * 2 + parity, result}
end
