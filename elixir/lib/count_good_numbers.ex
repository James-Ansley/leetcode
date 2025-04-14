defmodule CountGoodNumbers do
  @moduledoc """
  See: <https://leetcode.com/problems/count-good-numbers>
  """

  @modulo 1_000_000_007

  @spec count_good_numbers(n :: integer) :: integer
  def count_good_numbers(n) do
    evens = div(n + 1, 2)
    odds = div(n, 2)

    rem(pow_mod(5, evens, @modulo) * pow_mod(4, odds, @modulo), @modulo)
  end

  def pow_mod(base, exponent, modulo), do: pow_mod(base, exponent, modulo, 1)
  def pow_mod(_, 0, _, result), do: result

  def pow_mod(base, exponent, modulo, result) do
    result =
      case rem(exponent, 2) do
        1 -> rem(result * base, modulo)
        0 -> result
      end

    exponent = div(exponent, 2)
    base = rem(base * base, modulo)
    pow_mod(base, exponent, modulo, result)
  end
end
