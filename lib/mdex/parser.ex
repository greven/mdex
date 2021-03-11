defmodule Mdex.Parser do
  def extract(modules, opts \\ []) when is_list(modules) do
    modules
    |> Enum.each(&extract(&1, opts))
  end

  def extract(module, opts) do
    IO.inspect(module)
  end
end
