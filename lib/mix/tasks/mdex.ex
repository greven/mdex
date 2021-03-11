defmodule Mix.Tasks.Mdex do
  use Mix.Task

  @shortdoc "Prints MDEX help information"

  @moduledoc """
  Prints MDEX tasks and their information.

      mix mdex

  """

  @doc false
  def run(args) do
    {_opts, args} = OptionParser.parse!(args, strict: [])

    case args do
      [] -> help()
      _ -> Mix.raise("Invalid arguments, expected: mix mdex")
    end
  end

  defp help() do
    Mix.Task.run("app.start")
    Mix.shell().info("Mdex v#{Application.spec(:mdex, :vsn)}")
    Mix.shell().info("Simple static site generator for Elixir.")
    Mix.shell().info("\nAvailable tasks:\n")
    Mix.Tasks.Help.run(["--search", "mdex."])
  end
end
