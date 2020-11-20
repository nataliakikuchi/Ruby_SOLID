## OPEN CLOSED PRINCIPLE CHALLENGE

Temos uma classe que é responsável pelos logs de uma aplicação, hoje as principais formas de aviso dessa classe são: e-mail, SMS e logger info. Agora temos que adicionar o Slack como fonte de aviso sobre o status da nossa aplicação.

- Adicionar a nova integração com o Slack
- Aplicar o OCP
- Desenho de fluxo do antes e um do depois com a solução final
- Usar tasks, branchs e PR's de no maximo 5 arquivos para a entrega
- testes

### CÓDIGO NÃO REFATORADO

```
require 'logger'

class Logger
  def initialize(format, delivery)
    @format = format
    @delivery = delivery
  end

  def log(string)
    deliver(format(string))
  end

  private

  def format(string)
    case @format
    when :without_formatting
      string
    when :with_date
      "#{Time.now} #{string}"
    when :with_date_and_details
      "Log was creates at #{Time.now}, please check details #{string}"
    else
      raise NotImplementedError
    end
  end

  def deliver(text)
    case @delivery
    when :by_email
      puts "Enviado email"
    when :by_sms
      puts "Enviado por SMS"
    when :to_stdout
      STDOUT.write(text)
    else
      raise NotImplementedError
    end
  end
end

logger = Logger.new(:without_formatting, :to_stdout)
logger.log('Emergency error! Please fix me!')

```

### DESENHO DO FLUXO NÃO REFATORADO

![OCP_Incorrect](https://user-images.githubusercontent.com/37075313/99739597-dff3c080-2aab-11eb-9758-701fdfd86d66.png)

### DESENHO DO FLUXO COM PROPOSTA DE REFATORAÇÃO

![OCP_Refactor1](https://user-images.githubusercontent.com/37075313/99739974-bc7d4580-2aac-11eb-9dd0-960566ad01a2.png)

![OCP_Refactor2](https://user-images.githubusercontent.com/37075313/99739980-c0a96300-2aac-11eb-9cfd-eec31fe21715.png)



