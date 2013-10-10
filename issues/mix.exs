defmodule Issues.Mixfile do
  use Mix.Project

  def project do
    [ app: :issues,
      version: "0.0.1",
      elixir: "~> 0.10.3",
      name: "Issues",
      source: "https://github.com/sch1zo/programming-elixir/issues",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [
      applications: [:httpotion]
    ]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "~> 0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    [
      { :httpotion,     github: "myfreeweb/httpotion"},
      { :json,          github: "cblage/elixir-json"},
      # { :jsonex, "2.0", github: "marcelog/jsonex", tag: "2.0"},
      { :ex_doc,        github: "elixir-lang/ex_doc"}
    ]
  end
end
