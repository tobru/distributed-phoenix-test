defmodule SKT.DistributedPhoenixTest.DistributedServersController do
  use SKT.DistributedPhoenixTest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html", %{servers: Node.list}
  end
end
