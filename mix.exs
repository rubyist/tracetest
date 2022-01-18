defmodule OtelGettingStarted.MixProject do
  use Mix.Project

  # releases: [
  #   otel_getting_started: [
  #     version: "0.0.1",
  #     applications: [otel_getting_started: :permanent]
  #   ]
  # ]

  def project do
    [
      app: :otel_getting_started,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      releases: [
        otel_getting_started: [:opentelemetry_exporter, optentelemetry: :permanent]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {OtelGettingStarted.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:opentelemetry_api, "~> 1.0"},
      {:opentelemetry, "~> 1.0"},
      {:opentelemetry_exporter, "~> 1.0"}
    ]
  end
end
