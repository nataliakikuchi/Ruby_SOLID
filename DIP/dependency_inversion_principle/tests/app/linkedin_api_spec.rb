require './SOLID_/DEPENDENCY_INVERSION/app/linkedin_api'

RSpec.describe LinkedinApi do
  context 'when api receives stories' do
    it 'prints message with correct attributes' do
      logger = double('Logger')
      type = 'foto'
      duration = 0
      success_message = 'Arquivo de foto postado com sucesso. Esse story não tem duração definida.'
      allow(logger).to receive(:info)
        .with(success_message)

      subject = described_class.new(logger: logger)
      subject.share_story(type, duration)

      expect(logger).to have_received(:info)
        .with(success_message)
    end

    it 'prints message with incorrect attributes' do
      logger = double('Logger')
      type = 'texto'
      duration = 44
      error_message = 'Tipo de arquivo e duração inválidos.'
      allow(logger).to receive(:info)
        .with(error_message)

      subject = described_class.new(logger: logger)
      subject.share_story(type, duration)

      expect(logger).to have_received(:info)
        .with(error_message)
    end
  end
end
