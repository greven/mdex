defmodule Mdex.Router do
  use Mdex.Plugs
  import Mdex.View

  get "/" do
    render(conn, "index.html", title: "Home")
  end

  get "/about" do
    render(conn, "about.html", title: "About")
  end

  get "/ping" do
    send_resp(conn, 200, "pong")
  end

  match _ do
    send_resp(conn, 404, "Oh no! What you seek cannot be found.")
  end
end
