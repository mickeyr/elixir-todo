defmodule Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def up do
    "CREATE TABLE IF NOT EXISTS tasks(id serial primary key, description text)"
  end

  def down do
    "DROP TABLE tasks"
  end
end
