defmodule Names.Mixfile do
  use Mix.Project

  def project do
    [ app: :names,
      version: "0.0.1",
      dynamos: [Names.Dynamo],
      compilers: [:elixir, :dynamo, :app],
      env: [prod: [compile_path: "ebin"]],
      compile_path: "tmp/#{Mix.env}/names/ebin",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:cowboy, :dynamo],
      mod: { Names, [] } ]
  end

  defp deps do
    [ { :cowboy, github: "extend/cowboy" },
      { :dynamo, github: "elixir-lang/dynamo", tag: "elixir-0.10.1" } ]
  end
end
