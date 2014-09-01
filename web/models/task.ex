defmodule Todo.Task do
  use Ecto.Model

  schema "tasks" do
    field :description, :string
  end
end
