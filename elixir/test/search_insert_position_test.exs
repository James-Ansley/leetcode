defmodule SearchInsertPositionTest do
  use ExUnit.Case

  test "example cases" do
    assert SearchInsertPosition.search_insert([1, 3, 5, 6], 5) == 2
    assert SearchInsertPosition.search_insert([1, 3, 5, 6], 2) == 1
    assert SearchInsertPosition.search_insert([1, 3, 5, 6], 7) == 4
  end

  test "extra cases" do
    assert SearchInsertPosition.search_insert([], 5) == 0
    assert SearchInsertPosition.search_insert([1, 3, 5, 6], 0) == 0
    assert SearchInsertPosition.search_insert([1], 0) == 0
    assert SearchInsertPosition.search_insert([1], 1) == 0
    assert SearchInsertPosition.search_insert([1], 2) == 1
  end
end
