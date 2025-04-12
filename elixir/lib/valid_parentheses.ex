defmodule ValidParentheses do
  @moduledoc """
  See: <https://leetcode.com/problems/valid-parentheses>
  """

  @spec is_valid(s :: String.t()) :: boolean
  def is_valid(s) do
    is_valid(s, [])
  end

  defp is_valid("(" <> string, stack), do: is_valid(string, ["(" | stack])
  defp is_valid("[" <> string, stack), do: is_valid(string, ["[" | stack])
  defp is_valid("{" <> string, stack), do: is_valid(string, ["{" | stack])
  defp is_valid(")" <> string, ["(" | stack]), do: is_valid(string, stack)
  defp is_valid("]" <> string, ["[" | stack]), do: is_valid(string, stack)
  defp is_valid("}" <> string, ["{" | stack]), do: is_valid(string, stack)
  defp is_valid("", []), do: true
  defp is_valid(_, _), do: false
end
