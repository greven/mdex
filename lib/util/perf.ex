defmodule Util.Perf do
  @doc """
  Returns the execution time of the
  argument function `fun` in microseconds.
  """
  def timer(fun) when is_function(fun) do
    {exec_time, :ok} = :timer.tc(fun)
    exec_time
  end
end
