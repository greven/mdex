defmodule Mdex.Post do
  defstruct [:id, :date, :title, :author, :description, :body, :tags, :layout]

  def build(filename, attrs, body) do
    [year, month_day_id] = filename |> Path.rootname() |> Path.split() |> Enum.take(-2)
    [month, day, id] = String.split(month_day_id, "_", parts: 3)
    date = Date.from_iso8601!("#{year}_#{month}_#{day}")
    struct!(__MODULE__, [id: id, date: date, body: body] ++ Map.to_list(attrs))
  end
end
