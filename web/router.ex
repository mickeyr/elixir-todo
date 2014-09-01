defmodule Todo.Router do
  use Phoenix.Router

  get "/",    Todo.PageController,     :index,  as: :todo
  get "/new", Todo.PageController,     :new,    as: :todo
  post "/",   Todo.PageController,     :create, as: :todo

end
