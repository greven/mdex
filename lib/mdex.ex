defmodule Mdex do
  @moduledoc """
  Documentation for `Mdex`.
  """

  def init() do
  end

  def build() do
  end

  def server() do
  end

  def page() do
  end

  def post() do
  end

  def draft() do
  end

  defp __extract__(module, opts) do
    builder = Keyword.fetch!(opts, :build)
  end
end
