defmodule Todo.PageController do
  use Phoenix.Controller
  alias Todo.Router
  alias Todo.Task
  import Ecto.Query

  def index(conn, _params) do
    query = from t in Task,
            select: t

    list = Todo.Repo.all(query)
    render conn, "index", todo_list: list
  end
  
  def new(conn, _params) do
    render conn, "new"
  end

  def create(conn, params) do
    %Task{description: params["item"]}
    |> Todo.Repo.insert

    redirect conn, Router.todo_path(:index)
  end

  def not_found(conn, _params) do
    render conn, "not_found"
  end

  def error(conn, _params) do
    render conn, "error"
  end
end
