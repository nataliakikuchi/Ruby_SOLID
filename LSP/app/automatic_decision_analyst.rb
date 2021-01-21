require_relative 'analyst'

class AutomaticDecisionAnalyst < Analyst
  def initialize(name, random = Random::DEFAULT)
    @name = name
    @random = random
  end

  def analyse(application)
    if rejected?
      puts "#{name} rejected #{application.customer_name}'s application."
    else
      puts "#{name} approved #{application.customer_name}'s application!"
    end
  end

  private

  def rejected?
    [true, false].sample(random: @random)
  end
end
