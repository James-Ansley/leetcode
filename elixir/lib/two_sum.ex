defmodule TwoSum do
  @moduledoc """
  See: <https://leetcode.com/problems/two-sum>
  """

  @spec two_sum(nums :: [integer], target :: integer) :: [integer]
  def two_sum(nums, target) do
    two_sum(nums, target, %{}, 0)
  end

  defp two_sum([head | tail], target, compliments, index) do
    case Map.get(compliments, head) do
      nil ->
        new_compliments = Map.put(compliments, target - head, index)
        two_sum(tail, target, new_compliments, index + 1)
      key ->
        [key, index]
    end
  end
end
