class Analyst
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def analyse(application)
    puts "#{name} is now analysing #{application.customer_name}'s application."
  end
end
