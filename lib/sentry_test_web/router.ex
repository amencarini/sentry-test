defmodule SentryTestWeb.Router do
  use SentryTestWeb, :router

  use Plug.ErrorHandler
  use Sentry.Plug

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api", SentryTestWeb do
    pipe_through(:api)
  end
end
