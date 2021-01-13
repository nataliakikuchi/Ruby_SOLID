class CreditAnalysis
  attr_accessor :analysts

  def initialize(analysts, applications)
    @analysts = analysts
    @applications = applications
  end

  def analyse_all_applications
    @analysts.each do |analyst|
      @applications.each do |application|
        if analyst.class == AutomaticDecisionAnalyst #essa gambiarra só existe pq violamos o LSP .class é um método que existe em todos os objetos, retorna a classe do objeto
          reject = [true, false].sample #tomando a decisão
          analyst.analyse(application, reject) #chamando com a decisão tomada
        else
          analyst.analyse(application)
        end
      end
    end
  end
end

#esse if else existe porque não respeitamos o contrato. As classes que usam mãe e filha sabem que há contratos diferentes, mas precisam saber qual usar, para o código funcionar.
#chamar o método analyse de forma homogênea (igual) para não fazer diferença se lidamos com a mãe ou filha. Assim respeitamos o LSP

class Application
  attr_accessor :customer_name

  def initialize(customer_name)
    @customer_name = customer_name
  end
end

class Analyst
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def analyse(application)
    puts "#{name} is now analysing #{application.customer_name}'s application."
  end
end

class AutomaticDecisionAnalyst < Analyst
  def analyse(application, reject)
    if reject
      puts "#{name} approved #{application.customer_name}'s application!"
    else
      puts "#{name} rejected #{application.customer_name}'s application."
    end
  end
end

#faz mais sentido o analista automático decidir se é aprovado ou rejeitado. Hoje ele não toma decisão, já recebe pronto da classe CreditAnalysis, que é a classe que chama o método analyse

first_application = Application.new("João")
second_application = Application.new("Luana")
third_application = Application.new("Lucas")
applications = [first_application, second_application, third_application]

katniss_everdeen = Analyst.new("Katniss Everdeen")
aemon_targaryen = Analyst.new("Aemon Targaryen")
doctor_strange = AutomaticDecisionAnalyst.new("Doctor Strange")
analysts = [katniss_everdeen, aemon_targaryen, doctor_strange]

creditas = CreditAnalysis.new(analysts, applications)
creditas.analyse_all_applications