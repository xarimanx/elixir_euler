defmodule ElixirEuler.CLI do
  def main(args \\ []) do
    Enum.each(
      args,
      fn x -> Code.eval_string("ElixirEuler.Problem#{x}.responce") end
    )
  end
end
