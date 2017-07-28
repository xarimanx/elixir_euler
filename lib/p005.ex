defmodule ElixirEuler.Problem005 do
  @doc """
  2520 is the smallest number that can be divided by each of the numbers from 1
  to 10 without any remainder.
  What is the smallest positive number that is evenly divisible by all of the
  numbers from 1 to 20?
  """
  def solve do
    Stream.iterate(20, fn(x) -> x + 20 end)
      |> Enum.find(fn(x) -> devidable?(x) end)
  end

  def devidable?(num), do: Enum.all?(Enum.to_list(11..20), fn(n) -> rem(num, n) == 0 end)
  def responce, do: IO.puts "005 -> #{inspect solve}"
end
