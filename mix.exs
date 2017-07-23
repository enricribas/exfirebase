defmodule ExFirebase.Mixfile do
  use Mix.Project

  def project do
    [ app: :exfirebase,
      version: "0.4.1",
      elixir: "~> 1.0",
      deps: deps,
      description: description,
      package: package,
      test_coverage: [tool: ExCoveralls]
    ]
  end

  # Configuration for the OTP application
  def application do
    []
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "~> 0.1", git: "https://github.com/elixir-lang/foobar.git" }
  def deps do
    [
      {:ibrowse, "~> 4.2"},
      {:exjsx, "~> 4.0"},
      {:httpotion, "~> 3.0"},
    ]
  end

  defp description do
    """
    An elixir library for accessing the Firebase REST API.
    """
  end

  defp package do
    [ maintainers: ["parroty"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/parroty/exfirebase"} ]
  end
end
