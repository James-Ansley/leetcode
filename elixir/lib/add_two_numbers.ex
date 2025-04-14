defmodule AddTwoNumbers do
  @moduledoc """
  See: <https://leetcode.com/problems/add-two-numbers/>
  """

  @spec add_two_numbers(
          l1 :: ListNode.t() | nil,
          l2 :: ListNode.t() | nil
        ) :: ListNode.t() | nil
  def add_two_numbers(l1, l2) do
    add(l1, l2)
  end

  defp add(left, right, carry \\ 0, result \\ nil)
  defp add(nil, nil, 0, result), do: reverse(result)

  defp add(left, right, carry, result) do
    left_val = if left, do: left.val, else: 0
    right_val = if right, do: right.val, else: 0
    left_next = if left, do: left.next, else: nil
    right_next = if right, do: right.next, else: nil

    digit = left_val + right_val + carry
    new_node = %ListNode{val: rem(digit, 10), next: result}

    add(left_next, right_next, div(digit, 10), new_node)
  end

  defp reverse(node_list, result \\ nil)
  defp reverse(nil, result), do: result

  defp reverse(node, result) do
    reverse(node.next, %ListNode{val: node.val, next: result})
  end
end
