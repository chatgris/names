defmodule ApplicationRouter do
  use Dynamo.Router

  prepare do
    # Pick which parts of the request you want to fetch
    # You can comment the line below if you don't need
    # any of them or move them to a forwarded router
    conn.fetch([:cookies, :params])
  end

  get "/hello/:name" do
    conn = conn.put_resp_header "Content-Type", "application/json"
    conn.resp 200, JSON.generate [Hello: conn.params[:name]]
  end
end
