require 'logger'

class InstagramApi
  def initialize(overrides = {})
    @logger = overrides.fetch(:logger) { Logger.new(STDOUT) }
  end

  def send_to_stories(type, duration)
    if type == 'foto' || type == 'video' && duration <= 15
      @logger.info("Arquivo de #{type} postado com sucesso. A duração desse story é de #{duration} segundos.")
    else
      @logger.info('Tipo de arquivo e duração inválidos.')
    end
  end
end

#testar que esse método printa essa mensagem
#Logger é uma classe do Ruby que guarda mensagens da aplicação