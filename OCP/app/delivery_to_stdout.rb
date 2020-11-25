require 'logger'

class DeliveryToStdout
  def initialize(overrides = {})
    @logger_to_stdout = overrides.fetch(:logger_to_stdout) { Logger.new(STDOUT) }
  end

  def deliver(text)
    @logger_to_stdout.write(text)
  end
end

# STDOUT is a global variable that represents the current standard output.