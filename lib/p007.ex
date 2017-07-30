defmodule ElixirEuler.Problem007 do
  @moduledoc """
  By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
  that the 6th prime is 13.
  What is the 10_001st prime number?
  """
  def solve(n) do
    Stream.iterate(0, &(&1 + 1))
      |> Stream.filter(&prime?/1)
      |> Enum.take(n)
      |> List.last
  end

  def prime?(x) when x in [2, 3, 5, 7, 11, 13, 17], do: true
  def prime?(x) do
    Enum.all?(
      (2..round(:math.sqrt(x))),
      fn(n) -> rem(x, n) != 0 end
    )
  end

  def responce, do: IO.puts "007 -> #{inspect solve(10_001)}"
end
