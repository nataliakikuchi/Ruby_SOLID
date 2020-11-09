require 'logger'

class LinkedinApi
  def initialize(overrides = {})
    @logger = overrides.fetch(:logger) { Logger.new(STDOUT) }
  end

  def share_story(type, duration)
    if type == 'foto' && duration == 0
      @logger.info("Arquivo de #{type} postado com sucesso. Esse story não tem duração definida.")
    else
      @logger.info('Tipo de arquivo e duração inválidos.')
    end
  end
end
