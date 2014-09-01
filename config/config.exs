# This file is responsible for configuring your application
use Mix.Config

# Note this file is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project.

config :phoenix, Todo.Router,
  port: System.get_env("PORT"),
  ssl: false,
  static_assets: true,
  cookies: true,
  session_key: "_todo_key",
  session_secret: "D1KWH1HK9VB125%9Z04YFX#Y)4W1+LI%0)6+_*KQTR91)%OZ4MDX!&%7T4#*Z+J)JJL@&Q(KC!DIT",
  catch_errors: true,
  debug_errors: false,
  error_controller: Todo.PageController,
  connection_string: "ecto://mickey:iam1337@localhost/todo"

config :phoenix, :code_reloader,
  enabled: false

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. Note, this must remain at the bottom of
# this file to properly merge your previous config entries.
import_config "#{Mix.env}.exs"
