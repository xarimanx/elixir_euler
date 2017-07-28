defmodule ElixirEuler.Problem005 do
  @doc """
  A palindromic number reads the same both ways. The largest palindrome made
  from the product of two 2-digit numbers is 9009 = 91 × 99.
  Find the largest palindrome made from the product of two 3-digit numbers.
  """
  def solve do
    Stream.iterate(20, fn(x) -> x + 20 end)
      |> Enum.find(fn(x) -> devidable?(x) end)
  end

  def devidable?(num), do: Enum.all?(Enum.to_list(11..20), fn(n) -> rem(num, n) == 0 end)
  def responce, do: IO.puts "005 -> #{inspect solve}"
end
