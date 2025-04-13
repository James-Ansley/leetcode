defmodule LengthOfLastWordTest do
  use ExUnit.Case

  test "example cases" do
    assert LengthOfLastWord.length_of_last_word("Hello World") == 5
    case2 = "   fly me   to   the moon  "
    assert LengthOfLastWord.length_of_last_word(case2) == 4
    assert LengthOfLastWord.length_of_last_word("luffy is still joyboy") == 6
  end

  test "extra cases" do
    assert LengthOfLastWord.length_of_last_word("foo") == 3
    assert LengthOfLastWord.length_of_last_word(" a") == 1
    assert LengthOfLastWord.length_of_last_word(" a ") == 1
    assert LengthOfLastWord.length_of_last_word("a ") == 1
  end
end
