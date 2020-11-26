class DeliveryToStdout
  def initialize(overrides = {})
    @logger_to_stdout = overrides.fetch(:logger_to_stdout) { (STDOUT) }
  end

  def deliver(text)
    @logger_to_stdout.write(text)
  end
end

# STDOUT is a Ruby global constant that represents the current standard output.
# Essa constante aponta pra uma stream (stream do console) que printa as coisas no console.
# Por padrão, STDOUT é equivalente à stream (estrutura de dados que segue um padrão, sequência de informações) de dados de output do console. Então se jogo coisas no STDOUT, o conteúdo cai no console.
#$stdout é a variável que equivale à constante
