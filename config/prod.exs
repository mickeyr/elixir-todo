use Mix.Config

# NOTE: To get SSL working, you will need to set:
#
#     ssl: true,
#     keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#     certfile: System.get_env("SOME_APP_SSL_CERT_PATH"),
#
# Where those two env variables point to a file on disk
# for the key and cert

config :phoenix, Todo.Router,
  port: System.get_env("PORT"),
  ssl: false,
  host: "example.com",
  cookies: true,
  session_key: "_todo_key",
  session_secret: "D1KWH1HK9VB125%9Z04YFX#Y)4W1+LI%0)6+_*KQTR91)%OZ4MDX!&%7T4#*Z+J)JJL@&Q(KC!DIT"

config :logger, :console,
  level: :info,
  metadata: [:request_id]

