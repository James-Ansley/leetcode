defmodule MergeTwoSortedListsTest do
  use ExUnit.Case

  import MergeTwoSortedLists
  import Utils

  test "example cases" do
    case1 = to_node_list([1, 2, 4])
    case2 = to_node_list([1, 3, 4])
    assert merge_two_lists(case1, case2) == to_node_list([1, 1, 2, 3, 4, 4])
    assert merge_two_lists(nil, nil) == nil
    assert merge_two_lists(nil, to_node_list([0])) == to_node_list([0])
  end

  test "extra cases" do
    case1 = to_node_list([1, 3, 5])
    case2 = to_node_list([2, 4, 6])
    assert merge_two_lists(case1, case2) == to_node_list([1, 2, 3, 4, 5, 6])
    assert merge_two_lists(case2, case1) == to_node_list([1, 2, 3, 4, 5, 6])
  end
end
