use Mix.Config

# config :opentelemetry, :processors,
#   otel_batch_processor: %{
#     exporter: {:otel_exporter_stdout, []}
#   }

config :opentelemetry, :resource,
  service: %{name: "combined_service"}

# config :opentelemetry, :processors,
#   otel_batch_processor: %{
#     exporter: {:opentelemetry_exporter, %{endpoints: ["https://ingest.lightstep.com:443/metrics/otlp/v0.9"],
#                                           headers: [{"lightstep-access-token", "XXX"}]}}
#   }


config :opentelemetry, :processors,
  otel_batch_processor: %{
    exporter: {:opentelemetry_exporter, %{endpoints: ["https://api.honeycomb.io:443"],
                                          headers: [
                                            {"x-honeycomb-team", "XXX"},
                                            {"x-honeycomb-dataset", "experiments"}
                                          ]}}
}

# config :opentelemetry, :processors, [
#   # otel_batch_processor: %{exporter: {:otel_exporter_stdout, []}},
#   otel_batch_processor: %{exporter: {:opentelemetry_exporter, %{
#                                         endpoints: ["https://api.honeycomb.io:443"],
#                                         headers: [
#                                           {"x-honeycomb-team", "XXX"},
#                                           {"x-honeycomb-dataset", "experiments"}
#                                         ]
#                                      }}},
#   otel_batch_processor: %{exporter: {:opentelemetry_exporter, %{
#                                          otlp_traces_endpoint: "https://ingest.lightstep.com:443/traces/otlp/v0.6",
#                                          otlp_traces_headers: [
#                                            {"lightstep-access-token", "XXX"}
#                                          ]}}}
# ]

# config :opentelemetry, :processors,
#   otel_batch_processor: %{
#     exporter: {:opentelemetry_exporter, %{}}
#   }

# config :opentelemetry_exporter,
#   otlp_traces_endpoint: "https://ingest.lightstep.com:443/traces/otlp/v0.6",
#   otlp_traces_headers: [{"lightstep-access-token", "XXX"}]


# config :opentelemetry, :processors, [
#   # stdout
#   {:otel_batch_processor, %{exporter: {:otel_exporter_stdout, []}}},
#   # honeycomb
#   {:otel_batch_processor, %{exporter: {:opentelemetry_exporter, %{
#                                          endpoints: ["https://api.honeycomb.io:443"],
#                                          headers: [
#                                            {"x-honeycomb-team", "XXX"},
#                                            {"x-honeycomb-dataset", "experiments"}
#                                          ]}}}},
#   # lightstep
#   {:otel_batch_processor, %{exporter: {:opentelemetry_exporter, %{
#                                          otlp_traces_endpoint: "https://ingest.lightstep.com:443/traces/otlp/v0.6",
#                                          otlp_traces_headers: [
#                                            {"lightstep-access-token", "XXX"}
#                                          ]}}}}
# ]
