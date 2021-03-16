defmodule Util.Time do
  # TODO: Format time in seconds to differnt formats depending on magnitude, ex: if bigger than 1 second, seconds, if smaller than 1 second, milliseconds, if bigger than 60 seconds in minutes, etc...
  # def format()

  ##  Micro seconds formatting

  @doc """
  Outputs a formatted string of the microseconds time in
  `:nanosecond`, `:microsecond`, `:millisecond` or `:second`.

  ## Example

      iex> Util.Time.format_microseconds(1)
      "1µs"

      iex> Util.Time.format_microseconds(123, :microsecond)
      "123µs"

      iex> Util.Time.format_microseconds(1_000_000, :second)
      "1.0s"

      iex> Util.Time.format_microseconds(1_000, :millisecond)
      "1.0ms"
  """
  def format_microseconds(time) do
    format_microseconds(time, :microsecond)
  end

  def format_microseconds(time, :microsecond) do
    to_string(time) <> "µs"
  end

  def format_microseconds(time, :millisecond) do
    to_string(Float.floor(time / 1_000, 1)) <> "ms"
  end

  def format_microseconds(time, :second) do
    to_string(Float.floor(time / 1_000_000, 2)) <> "s"
  end
end
