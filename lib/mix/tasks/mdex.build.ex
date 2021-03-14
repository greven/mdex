defmodule Mix.Tasks.Mdex.Build do
  @moduledoc """
  Command to generate the static build of the website.
  """

  @shortdoc "Geneates the static site build"

  use Mix.Task

  def run(_args) do
    IO.puts("\nGenerating the static site...\n")
    Mdex.build()
  end
end
