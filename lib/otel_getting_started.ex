defmodule OtelGettingStarted do
  require OpenTelemetry.Tracer, as: Tracer

  def hello do
    Tracer.with_span "testing" do
      Tracer.add_event("test_operation", [{"bogons", 100}])
      Tracer.set_attributes([{:another_key, "yes"}, {:service, "hello"}])

      Tracer.with_span "subop" do
        Tracer.set_attributes([{:lemons_key, "five"}])
        Tracer.add_event("Sub span event!", [])
      end

      test
    end

    :world
  end

  def test do
    Tracer.with_span("example") do
      Tracer.with_span("main") do
      end
    end
  end
end
