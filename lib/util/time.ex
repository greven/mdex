defmodule Util.Time do
  ##  Micro seconds formatting

  @doc """
  Outputs a formatted string of the microseconds time in
  `:nanosecond`, `:microsecond`, `:millisecond` or `:second`.
  If no second argument is provided the format will be chosen
  given the magnitude of the time argument.

  ## Example

      iex> Util.Time.format_microseconds(1)
      "1µs"

      iex> Util.Time.format_microseconds(1234)
      "1.23ms"

      iex> Util.Time.format_microseconds(12340000)
      "12.33s"

      iex> Util.Time.format_microseconds(123, :microsecond)
      "123µs"

      iex> Util.Time.format_microseconds(1_000_000, :second)
      "1.0s"

      iex> Util.Time.format_microseconds(1_000, :millisecond)
      "1.0ms"
  """
  def format_microseconds(time) do
    cond do
      time >= 1_000_000 -> format_microseconds(time, :second)
      time >= 1_000 -> format_microseconds(time, :millisecond)
      true -> format_microseconds(time, :microsecond)
    end
  end

  def format_microseconds(time, :microsecond) do
    to_string(time) <> "µs"
  end

  def format_microseconds(time, :millisecond) do
    to_string(Float.floor(time / 1_000, 2)) <> "ms"
  end

  def format_microseconds(time, :second) do
    to_string(Float.floor(time / 1_000_000, 2)) <> "s"
  end
end
