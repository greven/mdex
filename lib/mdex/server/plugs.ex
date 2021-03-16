defmodule Mdex.Plugs do
  defmacro __using__(_) do
    quote do
      use Plug.Router

      plug(Plug.Static, at: "/", from: :mdex)
      plug(:match)
      plug(:dispatch)
    end
  end
end
