defmodule AddTwoNumbersTest do
  use ExUnit.Case

  import AddTwoNumbers
  import Utils

  test "example cases" do
    case1 = to_node_list([2, 4, 3])
    case2 = to_node_list([5, 6, 4])
    case3 = to_node_list([0])
    case4 = to_node_list([9, 9, 9, 9, 9, 9, 9])
    case5 = to_node_list([9, 9, 9, 9])
    case6 = to_node_list([8, 9, 9, 9, 0, 0, 0, 1])
    case7 = to_node_list([2,4,9])
    case8 = to_node_list([5,6,4,9])
    case9 = to_node_list([7,0,4,0,1])
    assert add_two_numbers(case1, case2) == to_node_list([7, 0, 8])
    assert add_two_numbers(case3, case3) == case3
    assert add_two_numbers(case4, case5) == case6
    assert add_two_numbers(case7, case8) == case9
  end

  test "extra cases" do
    case1 = to_node_list([0])
    case2 = to_node_list([1])
    case3 = to_node_list([2])
    assert add_two_numbers(case1, case2) == case2
    assert add_two_numbers(case2, case1) == case2
    assert add_two_numbers(case2, case2) == case3
  end
end
