defmodule LongestSubstringWithoutRepeatingCharacters do
  @moduledoc """
  See: <https://leetcode.com/problems/longest-substring-without-repeating-characters/>
  """

  @spec length_of_longest_substring(string :: String.t()) :: integer
  def length_of_longest_substring(string) do
    longest_substring(string, %{}, 0, 0, 0)
  end

  defp longest_substring("", _, _, _, longest), do: longest

  defp longest_substring(<<char, rest::binary>>, seen, left, right, longest) do
    left = case Map.get(seen, char) do
      nil -> left
      last_index -> max(left, last_index + 1)
    end

    seen = Map.put(seen, char, right)
    longest = max(longest, right - left + 1)
    longest_substring(rest, seen, left, right + 1, longest)
  end
end
