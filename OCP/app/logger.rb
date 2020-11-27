class Logger
  def initialize(format:, delivery:)
    @format = format
    @delivery = delivery
  end

  def log(text)
    @delivery.deliver(@format.format(text))
  end
end
