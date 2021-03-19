defmodule Mix.Tasks.Mdex.Server do
  use Mix.Task

  @shortdoc "Start the application and serve the static site"

  @moduledoc """
  Starts the application and server to serve the site and static assets.
  This is useful during development because of the hot reload.

  ## Command line options

  This task accepts the same command-line arguments as `run`.
  For additional information, refer to the documentation for
  `Mix.Tasks.Run`.

  For example, to run the dev server:

      mix mdex.server

  The `--no-halt` flag is automatically added.
  """

  use Mix.Task

  @doc false
  def run(args) do
    Mix.Tasks.Run.run(run_args() ++ args)
  end

  defp run_args do
    if iex_running?(), do: [], else: ["--no-halt"]
  end

  defp iex_running? do
    Code.ensure_loaded?(IEx) and IEx.started?()
  end
end
