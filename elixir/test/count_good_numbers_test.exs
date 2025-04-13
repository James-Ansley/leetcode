defmodule CountGoodNumbersTest do
  use ExUnit.Case

  import CountGoodNumbers

  test "example cases" do
    assert count_good_numbers(1) == 5
    assert count_good_numbers(4) == 400
    assert count_good_numbers(50) == 564_908_303
  end

  test "pow_mod" do
    assert pow_mod(4, 13, 497) == 445
    assert pow_mod(5, 3, 13) == 8
  end
end
