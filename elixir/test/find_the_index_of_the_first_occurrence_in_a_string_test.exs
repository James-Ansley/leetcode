defmodule FindTheIndexOfTheFirstOccurrenceInAStringTest do
  use ExUnit.Case

  import FindTheIndexOfTheFirstOccurrenceInAString

  test "example cases" do
    assert str_str("sadbutsad", "sad") == 0
    assert str_str("leetcode", "leeto") == -1
  end
end
