class Client
  attr_reader :name, :cpf

  def initialize(name:, cpf:)
    @name = name
    @cpf = cpf
  end

  def information
    "O nome do cliente é: #{name}, e o CPF do cliente é #{cpf}."
  end
end


class PremiumClient < Client
  attr_reader :discount

  def information
    "O nome do cliente é: #{name}, e o CPF do cliente é #{cpf}. Este cliente é premium e tem um desconto de #{discount} %"
  end

  def add_discount(discount)
    @discount = discount
    self
  end
end

class OrderStatus
  def initialize(client)
    @client = client
  end

  def print_details
    puts @client.information
  end
end


client = Client.new(name: 'Jordana', cpf: '987654')
premium_client = PremiumClient.new(name: 'Ana', cpf: '987654').add_discount(20)
order_client = OrderStatus.new(client)
order_premium = OrderStatus.new(premium_client)

order_client.print_details
puts '-----------------------------------------'
order_premium.print_details