class DeliveryToStdout
  def initialize(overrides = {})
    @logger_to_stdout = overrides.fetch(:logger_to_stdout) { (STDOUT) }
  end

  def deliver(text)
    @logger_to_stdout.write(text)
  end
end

# STDOUT is a global constant that represents the current standard output.
