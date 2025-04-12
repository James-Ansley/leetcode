defmodule LongestCommonPrefix do
  @moduledoc """
  See: <https://leetcode.com/problems/longest-common-prefix>
  """

  @spec longest_common_prefix(strings :: [String.t()]) :: String.t()
  def longest_common_prefix(strings) do
    strings
    |> Enum.map(&String.graphemes/1)
    |> Enum.zip()
    |> Enum.take_while(&all_equal?/1)
    |> Enum.map(&elem(&1, 0))
    |> Enum.join()
  end

  defp all_equal?([]), do: true
  defp all_equal?([_]), do: true
  defp all_equal?([this | that]), do: this == hd(that) and all_equal?(that)

  defp all_equal?(tuple) when is_tuple(tuple) do
    all_equal?(Tuple.to_list(tuple))
  end
end
