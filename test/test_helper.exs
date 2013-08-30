Dynamo.under_test(Names.Dynamo)
Dynamo.Loader.enable
ExUnit.start

defmodule Names.TestCase do
  use ExUnit.CaseTemplate

  # Enable code reloading on test cases
  setup do
    Dynamo.Loader.enable
    :ok
  end
end
