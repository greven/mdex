defmodule Mix.Tasks.Mdex.Build do
  @moduledoc """
  Command to compile the static build of the website.
  """

  @shortdoc "Generates the static site build"

  use Mix.Task
  alias Util.Time
  alias Util.Perf

  def run(_args) do
    IO.puts("\n🚀 Generating the static site...\n")

    exec_time = Perf.timer(&Mdex.build/0) |> Time.format_microseconds(:millisecond)

    IO.puts("\n📦  Done in " <> IO.ANSI.blue() <> exec_time <> IO.ANSI.white() <> ".")
    IO.puts(IO.ANSI.white() <> "Generated static site to _site.")
  end
end
