defmodule CalcTree.MixProject do
  use Mix.Project

  def project do
    [
      app: :calc_tree,
      version: "0.1.1",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {CalcTree.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [{:distillery, "~> 2.0"}]
  end
end
