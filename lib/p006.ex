defmodule ElixirEuler.Problem006 do
  @doc """
  The sum of the squares of the first ten natural numbers is,
  1^2 + 2^2 + ... + 10^2 = 385
  The square of the sum of the first ten natural numbers is,
  (1 + 2 + ... + 10)^2 = 552 = 3025
  Hence the difference between the sum of the squares of the first ten natural
  numbers and the square of the sum is 3025 − 385 = 2640.
  Find the difference between the sum of the squares of the first one hundred
  natural numbers and the square of the sum.
  """
  def solve do
    list = Enum.to_list(1..100)
    first = Enum.map(list, fn(x) -> x * x end)
      |> Enum.sum
    second = Enum.sum(list)
    second * second -  first
  end

  def responce, do: IO.puts "006 -> #{inspect solve}"
end
