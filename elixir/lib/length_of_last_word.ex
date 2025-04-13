defmodule LengthOfLastWord do
  @moduledoc """
  See: <https://leetcode.com/problems/length-of-last-word/>
  """

  @spec length_of_last_word(s :: String.t) :: integer
  def length_of_last_word(string) do
    String.split(string)
    |> List.last()
    |> String.length()
  end
end
