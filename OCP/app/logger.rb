class Logger
  def initialize(format: format, delivery: delivery)
    @format = format
    @delivery = delivery
  end

  def log(text)
    @delivery.deliver(@format.format(text))
  end
end
