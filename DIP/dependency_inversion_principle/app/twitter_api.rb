require 'logger'

class TwitterApi
  def initialize(overrides = {})
    @logger = overrides.fetch(:logger) { Logger.new(STDOUT) }
  end

  def share_fleet(type, duration)
    if type == 'foto' || type == 'video' || type == 'texto' && duration <= 30
      @logger.info("Arquivo de #{type} postado com sucesso. A duração desse story é de #{duration} segundos.")
    else
      @logger.info('Tipo de arquivo e duração inválidos.')
    end
  end
end