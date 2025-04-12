defmodule MergeTwoSortedLists do
  @moduledoc """
  See: <https://leetcode.com/problems/merge-two-sorted-lists/>
  """

  @spec merge_two_lists(
          list1 :: ListNode.t() | nil,
          list2 :: ListNode.t() | nil
        ) :: ListNode.t() | nil
  def merge_two_lists(left, nil), do: left
  def merge_two_lists(nil, right), do: right

  def merge_two_lists(left, right) do
    if left.val < right.val do
      %ListNode{val: left.val, next: merge_two_lists(left.next, right)}
    else
      %ListNode{val: right.val, next: merge_two_lists(left, right.next)}
    end
  end
end
