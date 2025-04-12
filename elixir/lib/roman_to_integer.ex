defmodule RomanToInteger do
  @moduledoc """
  See: <https://leetcode.com/problems/roman-to-integer>
  """

  @spec roman_to_int(s :: String.t()) :: integer
  def roman_to_int(s) do
    String.graphemes(s)
    |> Enum.map(&to_value/1)
    |> evaluate(0)
  end

  defp evaluate([first, second | rest], result) when first < second do
    evaluate(rest, result + second - first)
  end

  defp evaluate([], result), do: result
  defp evaluate([first | rest], result), do: evaluate(rest, result + first)

  defp to_value(s) do
    case s do
      "I" -> 1
      "V" -> 5
      "X" -> 10
      "L" -> 50
      "C" -> 100
      "D" -> 500
      "M" -> 1000
    end
  end
end
