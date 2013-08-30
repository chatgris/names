defmodule ApplicationRouterTest do
  use Names.TestCase
  use Dynamo.HTTP.Case

  # Sometimes it may be convenient to test a specific
  # aspect of a router in isolation. For such, we just
  # need to set the @endpoint to the router under test.
  @endpoint ApplicationRouter

  test "returns chatgris" do
    conn = get("/hello/chatgris")
    assert conn.status == 200
  end
end
