defmodule ElixirEuler.Problem004 do
  @doc """
  A palindromic number reads the same both ways. The largest palindrome made
  from the product of two 2-digit numbers is 9009 = 91 × 99.
  Find the largest palindrome made from the product of two 3-digit numbers.
  """
  def solve do
    Enum.map(pairs, fn({x, y}) -> x * y end)
      |> Enum.filter(fn(x) -> palindrome?(x) end)
      |> Enum.max
  end

  def palindrome? number do
    str = Integer.to_string(number)
    str == String.reverse str
  end

  def pairs do
    for x <- Enum.to_list(999..100), y <-  Enum.to_list(999..100), do: {x, y}
  end

  def responce, do: IO.puts "004 -> #{inspect solve}"
end
