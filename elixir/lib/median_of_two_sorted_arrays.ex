defmodule MedianOfTwoSortedArrays do
  @moduledoc """
  See: <https://leetcode.com/problems/median-of-two-sorted-arrays/>
  """

  def find_median_sorted_arrays(nums1, nums2) do
    find_median({nums1, nums2}, {nums1, nums2}, 0)
  end

  defp find_median({[], []}, mid, index) when rem(index, 2) == 1 do
    min_head(mid)
  end

  defp find_median({[], []}, mid, index) when rem(index, 2) == 0 do
    (min_head(mid) + min_head(pop_min(mid))) / 2
  end

  defp find_median(values, mid, index) when index == 0 or rem(index, 2) == 1 do
    find_median(pop_min(values), mid, index + 1)
  end

  defp find_median(values, mid, index) when rem(index, 2) == 0 do
    find_median(pop_min(values), pop_min(mid), index + 1)
  end

  defp pop_min({[_ | left], []}), do: {left, []}
  defp pop_min({[], [_ | right]}), do: {[], right}

  defp pop_min({left, right}) do
    if hd(left) < hd(right) do
      {tl(left), right}
    else
      {left, tl(right)}
    end
  end

  defp min_head({[left | _], []}), do: left
  defp min_head({[], [right | _]}), do: right
  defp min_head({[left | _], [right | _]}), do: min(left, right)
end
