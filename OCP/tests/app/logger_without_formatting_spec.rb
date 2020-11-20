require './app/logger_without_formatting'

RSpec.describe LoggerWithoutFormatting do
  context 'when receiving a text' do
    it 'returns non formatted text' do
      text = 'Olá, mundo.'

      subject = described_class.new.format(text)

      expect(subject).to eq(text)
    end
  end
end
