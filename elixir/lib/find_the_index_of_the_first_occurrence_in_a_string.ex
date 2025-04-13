defmodule FindTheIndexOfTheFirstOccurrenceInAString do
  @moduledoc """
  See: <https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string>
  """

  @spec str_str(haystack :: String.t(), needle :: String.t()) :: integer
  def str_str(haystack, needle) do
    str_str(haystack, needle, 0)
  end

  defp str_str(haystack, needle, index) do
    case haystack do
      "" -> -1
      ^needle <> _ -> index
      <<_, rest::binary>> -> str_str(rest, needle, index + 1)
    end
  end
end
