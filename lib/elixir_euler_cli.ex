defmodule ElixirEuler.CLI do
  def main(args \\ []) do
    solution_for args
  end

  def solution_for([]) do
    Enum.to_list(1..7)
    |> Enum.map(&prepare_num/1)
    |> Enum.each(&solve_problem/1)
  end

  def solution_for(args) do
    args
    |> Enum.map(&String.to_integer/1)
    |> Enum.map(&prepare_num/1)
    |> Enum.each(&solve_problem/1)
  end

  def solve_problem(number) do
    Code.eval_string("ElixirEuler.Problem#{number}.responce")
  end

  def prepare_num(num) do
    num
    |> Integer.to_string
    |> String.rjust(3, ?0)
  end
end
