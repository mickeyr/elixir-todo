use Mix.Config

config :phoenix, Todo.Router,
  port: System.get_env("PORT") || 4000,
  ssl: false,
  host: "localhost",
  cookies: true,
  session_key: "_todo_key",
  session_secret: "D1KWH1HK9VB125%9Z04YFX#Y)4W1+LI%0)6+_*KQTR91)%OZ4MDX!&%7T4#*Z+J)JJL@&Q(KC!DIT",
  debug_errors: true

config :phoenix, :code_reloader,
  enabled: true

config :logger, :console,
  level: :debug


