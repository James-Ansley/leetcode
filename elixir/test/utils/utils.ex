defmodule Utils do
  def to_node_list([]), do: nil

  def to_node_list([head | tail]) do
    %ListNode{val: head, next: to_node_list(tail)}
  end
end
