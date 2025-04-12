defmodule ValidParenthesesTest do
  use ExUnit.Case

  test "example cases" do
    assert ValidParentheses.is_valid("()")
    assert ValidParentheses.is_valid("()[]{}")
    assert ValidParentheses.is_valid("([])")
    assert not ValidParentheses.is_valid("(]")
  end
end
