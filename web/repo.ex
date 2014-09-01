defmodule Todo.Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres
  alias Phoenix.Config

  def conf do
    parse_url "ecto://postgres:postgres@localhost/ecto" 
  end
  
  def priv do
    app_dir(:todo, "priv/repo")
  end
end
