defmodule SearchInsertPosition do
  @moduledoc """
  See: <https://leetcode.com/problems/search-insert-position/>
  """

  @spec search_insert(nums :: [integer], target :: integer) :: integer
  def search_insert(nums, target) do
    search_insert(nums, target, 0)
  end

  defp search_insert([], _, index), do: index

  defp search_insert([head | tail], target, index) do
    if head >= target do
      index
    else
      search_insert(tail, target, index + 1)
    end
  end
end
