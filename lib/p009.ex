defmodule ElixirEuler.Problem009 do
  @moduledoc """
  A Pythagorean triplet is a set of three natural numbers, a < b < c, for
  which, a^2 + b^2 = c^2
  For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
  There exists exactly one Pythagorean triplet for which a + b + c = 1000.
  Find the product abc.
  """
  def solve(n) do
    Enum.to_list(1..n+1)
    |> Enum.map(fn(a) -> for b <- a+1..n+1, do: {a, b} end)
    |> List.flatten
    |> Enum.map(fn({a, b}) -> {a, b, n-a-b} end)
    |> Enum.find(&pythagorean?/1)
    |> (fn(x) -> multiple(x) end).()
  end

  def multiple({a,b,c}), do: a*b*c
  def pythagorean?({a,b,c}), do: a*a+b*b == c*c

  def responce, do: IO.puts "009 -> #{inspect solve(1000)}"
end
