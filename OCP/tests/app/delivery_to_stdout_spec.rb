require './app/delivery_to_stdout'

RSpec.describe DeliveryToStdout do
  context 'when receiving a text' do
    it 'delivers text to STDOUT' do
      logger_to_stdout = double('Logger')
      text = 'Olá, mundo!'
      allow(logger_to_stdout).to receive(:write).with(text)

      subject = described_class.new(logger_to_stdout: logger_to_stdout)
      subject.deliver(text)

      expect(logger_to_stdout).to have_received(:write).with(text)
    end
  end
end
