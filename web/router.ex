defmodule SKT.DistributedPhoenixTest.Router do
  use SKT.DistributedPhoenixTest.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :put_secure_browser_headers
  end

  scope "/", SKT.DistributedPhoenixTest do
    pipe_through :browser # Use the default browser stack

    get "/", DistributedServersController, :index
  end
end
