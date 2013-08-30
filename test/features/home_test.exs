# Feature tests goes through the Dynamo.under_test
# and are meant to test the full stack.
defmodule HomeTest do
  use Names.TestCase
  use Dynamo.HTTP.Case

  test "returns chatgris" do
    conn = get("/hello/chatgris")
    assert conn.status == 200
  end

  test "returns json" do
    conn = get("/hello/chatgris")
    assert conn.resp_headers["Content-Type"] == "application/json"
  end
end
