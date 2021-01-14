## LISKOV SUBSTITUTION PRINCIPLE CHALLENGE

Temos uma classe que é responsável por rodar todas as análises para N applications.

Na solução atual, a subclasse AutomaticDecisionAnalyst precisa de um parâmetro extra para conseguir realizar uma análise, ou seja, possui pré-condições mais específicas que o método da classe base Analyst. E por esse motivo, a classe Creditas precisa fazer um if else ao rodar todas as análises, evidenciando a violação do princípio de substituição de Liskov.

O desafio consiste em resolver essa violação do princípio de substituição de Liskov, corrigindo a abstração das sub classes.

- Aplicar LSP
- Fazer um refining para quebrar a solução em histórias/tasks
    - Desenho com a solução
    - Um card no trello ou github para cada história/task com explicação e pontuação de esforço
- Colocar em cada PR o link de suas histórias/tasks específicas

### CÓDIGO NÃO REFATORADO

```

class CreditAnalysis
  attr_accessor :analysts

  def initialize(analysts, applications)
    @analysts = analysts
    @applications = applications
  end

  def analyse_all_applications
    @analysts.each do |analyst|
      @applications.each do |application|
        if analyst.class == AutomaticDecisionAnalyst
          reject = [true, false].sample
          analyst.analyse(application, reject)
        else
          analyst.analyse(application)
        end
      end
    end
  end
end

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

```

### DESENHO DO FLUXO COM PROPOSTA DE REFATORAÇÃO

