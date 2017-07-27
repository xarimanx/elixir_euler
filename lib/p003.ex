defmodule ElixirEuler.Problem003 do
  @doc """
  The prime factors of 13195 are 5, 7, 13 and 29.
  What is the largest prime factor of the number 600851475143 ?
  """
  def solve(n) do
    Stream.iterate(0, fn(x) -> x + 1 end)
      |> Stream.filter(fn(x) -> prime?(x) end)
      |> Enum.take_while(fn(x) -> x < round(:math.sqrt(n)) end)
      |> Enum.filter(fn(x) -> rem(n, x) == 0 end)
      |> List.last
  end

  def prime?(x) when x in [2, 3, 5, 7, 11, 13, 17], do: true
  def prime?(x) do
    Enum.all?(
      (2..round(:math.sqrt(x))),
      fn(n) -> rem(x, n) != 0 end
    )
  end

  def responce, do: IO.puts "003 -> #{inspect solve(600_851_475_143)}"
end
