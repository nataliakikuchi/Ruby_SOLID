require_relative 'analyst'

class AutomaticDecisionAnalyst < Analyst
  def analyse(application, reject)
    if reject
      puts "#{name} rejected #{application.customer_name}'s application."
    else
      puts "#{name} approved #{application.customer_name}'s application!"
    end
  end
end
