defmodule Mdex do
  @moduledoc """
  Documentation for `Mdex`.
  """

  alias Mdex.Parser

  def init() do
  end

  def build() do
    ["Post", "Page"] |> Parser.extract()
  end

  def server() do
  end

  def page() do
  end

  def post() do
  end
end
