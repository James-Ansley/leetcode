defmodule CountGoodNumbers do
  @moduledoc """
  See: <https://leetcode.com/problems/count-good-numbers>
  """

  import Bitwise

  @modulo 1_000_000_007

  @spec count_good_numbers(n :: integer) :: integer
  def count_good_numbers(1), do: 5

  def count_good_numbers(n) do
    num_evens = div(n + 1, 2)
    num_odds = div(n, 2)

    possible_numbers =
      pow_mod(5, num_evens, @modulo) * pow_mod(4, num_odds, @modulo)

    rem(possible_numbers, @modulo)
  end

  def pow_mod(base, exponent, modulo), do: pow_mod(base, exponent, modulo, 1)
  def pow_mod(_, 0, _, result), do: result

  def pow_mod(base, exponent, modulo, result) do
    result =
      case rem(exponent, 2) do
        1 -> rem(result * base, modulo)
        0 -> result
      end

    exponent = exponent >>> 1
    base = rem(base * base, modulo)
    pow_mod(base, exponent, modulo, result)
  end
end
